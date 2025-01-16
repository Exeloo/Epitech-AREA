import 'package:aether/config/api_config.dart';
import 'package:aether/modules/auth/auth_helper.dart';
import 'package:ferry/ferry.dart';

import 'httpauthlink.dart';

class GraphQlClient {
  factory GraphQlClient() {
    _singleton._updateClient();
    return _singleton;
  }

  GraphQlClient._();

  static final GraphQlClient _singleton = GraphQlClient._();
  Client? _client;

  Client get client => _client!;

  void dispose() {
    _client?.dispose();
    _client = null;
  }

  void _updateClient() {
    final newLink = _createLink();
    if (_client == null) {
      _client = Client(link: newLink);
    } else {
      _client = Client(link: newLink);
    }
  }

  static Link _createLink() {
    final authLink = HttpAuthLink(
      baseUrl: AppConfig.apiUrl,
      authHelper: AuthHelper(),
    );

    return authLink;
  }

  void refreshClient() {
    _updateClient();
  }
}