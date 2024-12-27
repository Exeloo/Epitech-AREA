import 'package:ferry/ferry.dart';
import 'package:mobile/modules/auth/auth_helper.dart';
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
