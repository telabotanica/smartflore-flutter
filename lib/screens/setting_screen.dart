import 'package:flutter/material.dart';
import 'package:smartflore/screens/webview/webview_screen_ctrl.dart';

class SettingsItemVO {
  final String label;
  final String url;
  SettingsItemVO(this.label, this.url);
}

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final List<SettingsItemVO> listItems = [
    SettingsItemVO("Conditions d'utilisation",
        'https://taxamart.floristic.org/static/fr/terms_of_use.html'),
    SettingsItemVO(
        'Crédits', 'https://taxamart.floristic.org/static/fr/credits.html'),
    SettingsItemVO(
        'À propos', 'https://taxamart.floristic.org/static/fr/about.html')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Color(0xFF13161C), size: 14),
            backgroundColor: Theme.of(context).colorScheme.background,
            shadowColor: const Color(0x40000000),
            elevation: 10,
            centerTitle: false,
            titleSpacing: 0.0,
            title: Text('Paramètres',
                style: Theme.of(context).textTheme.bodyText1)),
        body: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return TextButton(
                style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(0))),
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WebViewPage(
                              title: listItems[index].label,
                              url: listItems[index].url),
                        ),
                      )
                    },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(width: 1.0, color: Color(0xFFCCCCCC))),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                      child: Text(
                        listItems[index].label,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    )));
          },
        ));
  }
}
