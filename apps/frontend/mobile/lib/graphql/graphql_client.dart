import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:simple_articles_app/utils/logger.dart';

const String baseUrl =
    'http://localhost:8080/graphql';

class GraphQlClient {
  /// Initialises [_client] with setting cache store
  factory GraphQlClient() {
    _client ??= Client(link: HttpLink(baseUrl));
    return _singleton;
  }
  GraphQlClient._();

  static final GraphQlClient _singleton = GraphQlClient._();

  static Client? _client;

  Client get client {
    if (_client == null) {
      debugLog('GraphQlClient.safeClient: client is null');
    }
    return _client!;
  }

  void dispose() {
    debugLog('GraphQlClient.dispose');
    _client?.dispose();
  }
}