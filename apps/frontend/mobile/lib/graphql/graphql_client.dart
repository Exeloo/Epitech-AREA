import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

class GraphQlClient {
  factory GraphQlClient() {
    _client ??= Client(link: HttpLink(_resolveBaseUrl()));
    return _singleton;
  }

  GraphQlClient._();

  static final GraphQlClient _singleton = GraphQlClient._();
  static Client? _client;

  Client get client => _client!;

  void dispose() {
    _client?.dispose();
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