import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:mobile/modules/auth/auth_helper.dart';

class GraphQlClient {
  factory GraphQlClient() {
    _client ??= Client(link: _createLink());
    return _singleton;
  }

  GraphQlClient._();

  static final GraphQlClient _singleton = GraphQlClient._();
  static Client? _client;

  Client get client => _client!;

  void dispose() {
    _client?.dispose();
  }

   static Link _createLink() {
    final authHelper = AuthHelper();
    final httpLink = HttpLink(_resolveBaseUrl());

    final authLink = Link.function((request, [forward]) async* {
      final token = await authHelper.getAuthToken();
      print('Token: $token');
      var headers = Map<String, String>.from(request.context.entry<HttpLinkHeaders>()?.headers ?? {});
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
      request.updateContextEntry<HttpLinkHeaders>(
        (_) => HttpLinkHeaders(headers: headers),
      );
      print('Request: ${request.operation.document}');
      print('Headers: ${headers}');
      yield* forward!(request);
    });

    return authLink.concat(httpLink);
  }
}

String _resolveBaseUrl() {
  const String localhost = 'http://10.0.2.2:8080/graphql';
  const String defaultUrl = 'http://localhost:8080/graphql';

  if (_isAndroidEmulator()) {
    return localhost;
  } else {
    return defaultUrl;
  }
}

bool _isAndroidEmulator() {
  return Uri.base.toString().contains("localhost") == false;
}