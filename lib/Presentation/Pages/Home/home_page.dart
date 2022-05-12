import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  InAppWebViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if ((await _controller?.canGoBack()) ?? false) {
          _controller?.goBack();
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse("https://klassiccurves.xyz/")),
            onLoadStart: (controller, uri) {
              _controller = controller;
            },
            initialOptions: InAppWebViewGroupOptions(
              crossPlatform: InAppWebViewOptions(
                preferredContentMode: UserPreferredContentMode.MOBILE,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
