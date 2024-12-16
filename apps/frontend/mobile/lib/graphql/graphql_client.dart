// import 'package:ferry/ferry.dart';
// import 'package:gql_http_link/gql_http_link.dart';

// Client initGraphQLClient(String uri) {
//   final link = HttpLink(uri);

//   // Cache pour le client
//   final cache = Cache();

//   // Initialisation du client Ferry
//   final client = Client(
//     link: link,
//     cache: cache,
//   );

//   return client;
// }
import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';


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
  
    return _client!;
  }

  void dispose() {
    _client?.dispose();
  }
}