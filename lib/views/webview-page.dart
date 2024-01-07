import 'package:flutter/material.dart';
import 'package:news_app/widgets/webview_stack.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebViewStack(
      pageUrl: url,
    ));
  }
}
