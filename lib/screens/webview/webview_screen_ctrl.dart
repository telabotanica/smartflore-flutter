import 'package:flutter/material.dart';
import 'package:smartflore/screens/webview/webview_screen.dart';

class WebViewPage extends StatelessWidget {
  final String? title;
  final String? url;
  const WebViewPage({Key? key, this.url, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          actionsIconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          shadowColor: const Color(0x00000000),
          title: Text(title ?? '',
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold)),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.close,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: WebViewScreen(url: url));
  }
}