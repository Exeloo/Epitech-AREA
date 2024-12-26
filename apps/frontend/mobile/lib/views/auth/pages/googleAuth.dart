import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class googleAuth extends StatefulWidget {
  @override
  _googleAuthState createState() => _googleAuthState();
}

class _googleAuthState extends State<googleAuth> {
  late WebViewController _webViewController;
  late String googleAuthUrl;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            if (url.startsWith('mobile://oauth-callback')) {
              _handleRedirect(url);
            }
          },
        ),
      );
    _webViewController.loadRequest(Uri.parse('http://10.0.2.2:8080/auth/google?device=mobile'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _webViewController)
    );
  }

  void _handleRedirect(String url) {
    final Uri uri = Uri.parse(url);
    final String? code = uri.queryParameters['code'];

    if (code != null) {
      print("Authorization code: $code");
      Navigator.pop(context);
    }
  }
}
