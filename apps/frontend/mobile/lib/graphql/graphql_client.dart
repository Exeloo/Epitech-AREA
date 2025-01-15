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
      baseUrl: _resolveBaseUrl(),
      authHelper: AuthHelper(),
    );

    return authLink;
  }
}

String _resolveBaseUrl() {
  const String localhost = 'https://api.aether-area.fr/graphql';
  const String defaultUrl = 'https://api.aether-area.fr/graphql';

  if (_isAndroidEmulator()) {
    return localhost;
  } else {
    return defaultUrl;
  }
}

bool _isAndroidEmulator() {
  return Uri.base.toString().contains("localhost") == false;
}
