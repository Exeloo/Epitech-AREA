import 'package:aether/config/api_config.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../modules/auth/auth_helper.dart';
import '../../mainPage/pages/main_navigation.dart';

class GoogleAuth extends StatefulWidget {
  const GoogleAuth({super.key});

  @override
  GoogleAuthState createState() => GoogleAuthState();
}

class GoogleAuthState extends State<GoogleAuth> {
  late WebViewController _webViewController;
  late String googleAuthUrl;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent('Aether-Mobile')
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (url.startsWith('aether://oauth-callback')) {
              _handleRedirect(url);
            }
          },
        ),
      );
    _webViewController.loadRequest(
        Uri.parse(('${AppConfig.oauthUrl}/auth/google?device=mobile')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: _webViewController));
  }

  Future<void> _handleRedirect(String url) async {
    final Uri uri = Uri.parse(url);
    final String? token = uri.queryParameters['token'];
    final String? refreshToken = uri.queryParameters['refreshToken'];
    final String? tokenExpiresAt = uri.queryParameters['tokenExpiresAt'];

    Navigator.pop(context);

    if (token != null && tokenExpiresAt != null && refreshToken != null) {
      final authHelper = AuthHelper();
      await authHelper.handleOAuth(token);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const MainNavigationPage()),
          (Route<dynamic> route) => false);
    }
  }
}
