import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppletOauthWebView extends StatefulWidget {
  final String baseUrl;

  const AppletOauthWebView({super.key, required this.baseUrl});

  @override
  AppletOauthWebViewState createState() => AppletOauthWebViewState();
}

class AppletOauthWebViewState extends State<AppletOauthWebView> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent('Aether-Mobile')
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            Future.delayed(const Duration(seconds: 3), () {
              if (url.startsWith('https://api.aether-area.fr/area/oauth/') &&
                  url.contains("/callback")) {
                _handleRedirect(url);
              }
            });
          },
        ),
      );
    _webViewController.loadRequest(Uri.parse(widget.baseUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: _webViewController));
  }

  Future<void> _handleRedirect(String url) async {
    Navigator.pop(context);
  }
}
