import 'package:aether/config/api_config.dart';
import 'package:aether/modules/auth/auth_helper.dart';
import 'package:ferry/ferry.dart';

import 'httpauthlink.dart';

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
    final authLink = HttpAuthLink(
      baseUrl: AppConfig.apiUrl,
      authHelper: AuthHelper(),
    );

    return authLink;
  }
}
