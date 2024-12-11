import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

Client initGraphQLClient(String uri) {
  final link = HttpLink(uri);

  // Cache pour le client
  final cache = Cache();

  // Initialisation du client Ferry
  final client = Client(
    link: link,
    cache: cache,
  );

  return client;
}
