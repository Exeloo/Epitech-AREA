import 'dart:developer';

import 'package:aether/modules/auth/auth_helper.dart';
import 'package:gql_error_link/gql_error_link.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:gql_link/gql_link.dart';
import 'package:gql_transform_link/gql_transform_link.dart';

class HttpAuthLink extends Link {
  late final Link _innerLink;
  final AuthHelper _authHelper;
  String? _token;

  final String baseUrl;

  HttpAuthLink({
    required this.baseUrl,
    AuthHelper? authHelper,
  }) : _authHelper = authHelper ?? AuthHelper() {
    _innerLink = Link.from([
      ErrorLink(onException: _handleException),
      TransformLink(requestTransformer: _transformRequest),
      HttpLink(baseUrl),
    ]);
  }

  Future<void> _updateToken() async {
    _token = await _authHelper.getAuthToken();
    log("[HttpAuthLink] Updated token: $_token");
  }

  Stream<Response> _handleException(
    Request request,
    NextLink forward,
    LinkException exception,
  ) async* {
    if (exception is HttpLinkServerException &&
        exception.response.statusCode == 401) {
      await _updateToken();

      yield* forward(request);

      return;
    }

    throw exception;
  }

  Request _transformRequest(Request request) {
    final updatedHeaders = <String, String>{
      ...request.context.entry<HttpLinkHeaders>()?.headers ?? {},
      if (_token != null) 'Authorization': _token!,
    };

    return request.updateContextEntry<HttpLinkHeaders>(
      (headers) => HttpLinkHeaders(headers: updatedHeaders),
    );
  }

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    if (_token == null) {
      await _updateToken();
    }

    yield* _innerLink.request(request, forward);
  }
}
