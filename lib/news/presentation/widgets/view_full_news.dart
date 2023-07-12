import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewFullNews extends StatelessWidget {
  const ViewFullNews({super.key, required this.uri});

  final String uri;

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..loadRequest(Uri.parse(uri));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Article'),
      ),
      body: WebViewWidget(
        controller: controller,
        layoutDirection: TextDirection.rtl,
      ),
    );
  }
}
