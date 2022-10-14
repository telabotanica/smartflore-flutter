import 'dart:io';

import 'package:flutter/material.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  final String? url;
  const WebViewScreen({Key? key, this.url}) : super(key: key);

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  bool loadError = false;

  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return (loadError)
        ? Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  SmartFloreIcons.wifioff,
                  size: 30,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 200,
                  child: Text(
                    'Ressource non disponnible hors ligne',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ))
        : WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: widget.url,
            onWebResourceError: (error) {
              if (error.errorType == WebResourceErrorType.hostLookup) {
                setState(() {
                  loadError = true;
                });
              }
            },
          );
  }
}
