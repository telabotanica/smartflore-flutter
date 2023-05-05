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
          leadingWidth: 40,
          leading: ModalRoute.of(context)?.canPop == true
              ? SizedBox(
                  width: 15,
                  child: IconButton(
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      size: 24,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                )
              : null,
          automaticallyImplyLeading: false,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          actionsIconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Theme.of(context).colorScheme.background,
          shadowColor: const Color(0x40000000),
          elevation: 10,
          title:
              Text(title ?? '', style: Theme.of(context).textTheme.bodyLarge),
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
        body: url == null
            ? const Center(child: Text('Oups, aucune URL renseignée !'))
            : WebViewScreen(url: url!));
  }
}
