import 'dart:developer';

import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

import 'package:mobile/modules/auth/auth_helper.dart';

/// A Link that adds the Authorization header using [AuthHelper].
/// It also intercepts 401 responses and retries with a refreshed token.
class HttpAuthLink extends Link {
  late final Link _innerLink;
  final AuthHelper _authHelper;
  String? _token;

  /// Use your GraphQL endpoint here, or pass it in via constructor
  final String baseUrl;

  HttpAuthLink({
    required this.baseUrl,
    AuthHelper? authHelper,
  }) : _authHelper = authHelper ?? AuthHelper() {
    // Build a chain of links:
    // 1. ErrorLink to handle exceptions (like 401)
    // 2. TransformLink to inject headers
    // 3. HttpLink to send the actual HTTP request
    _innerLink = Link.from([
      ErrorLink(onException: _handleException),
      TransformLink(requestTransformer: _transformRequest),
      HttpLink(baseUrl),
    ]);
  }

  /// Fetches the current token from secure storage if not already cached
  Future<void> _updateToken() async {
    _token = await _authHelper.getAuthToken();
    log("[HttpAuthLink] Updated token: $_token");
  }

  /// Intercept exceptions and handle 401 Unauthorized
  Stream<Response> _handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    // Only handle 401 from server
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      // Re-fetch token from storage or refresh it
      await _updateToken();

      // Retry original request with updated token
      yield* forward(request);

      return;
    }

    // Otherwise, rethrow the exception so it can be handled elsewhere
    throw exception;
  }

  /// Add the Authorization header (if available) to each request
  Request _transformRequest(Request request) {
    final updatedHeaders = <String, String>{
      // Preserve existing headers, if any
      ...request.context.entry<HttpLinkHeaders>()?.headers ?? {},
      if (_token != null) 'Authorization': _token!,
    };

    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(headers: updatedHeaders),
    );
  }

  /// The core `Link.request` override.
  /// Ensures we have a token before sending the request.
  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    // If no token, fetch it
    if (_token == null) {
      await _updateToken();
    }

    // Delegate the request down the chain of links
    yield* _innerLink.request(request, forward);
  }
}
