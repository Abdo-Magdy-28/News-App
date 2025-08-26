import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatelessWidget {
  Webview({super.key, required this.url});
  final String url;
  late final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(url));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 30),
            children: [
              TextSpan(
                text: "News",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "Cloud",
                style: TextStyle(color: Color(0xffd2b986)),
              ),
            ],
          ),
        ),
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
