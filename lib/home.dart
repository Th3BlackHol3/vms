import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final String url = "https://vms.mistridev.xyz/";
  late WebViewController webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: WebView(
        debuggingEnabled: false,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          webViewController = controller;
          webViewController.loadUrl(url);
          print('url $url');
        },
        onWebResourceError: (error) {},
        onPageFinished: (page) {
          print('finished');
        },
      ),
    ));
  }
}
