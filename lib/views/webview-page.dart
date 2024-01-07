import 'package:flutter/material.dart';
import 'package:news_app/widgets/navigation_controls.dart.dart';
import 'package:news_app/widgets/webview_stack.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, required this.url});
  final String url;

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse(widget.url),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            NavigationControls(controller: controller),
          ],
        ),
        body: WebViewStack(
          controller: controller,
        ));
  }
}
