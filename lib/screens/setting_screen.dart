import 'package:flutter/material.dart';
import 'package:smartflore/_env/app_env.dart';
import 'package:smartflore/screens/webview/webview_screen_ctrl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsItemVO {
  final String label;
  final String url;
  SettingsItemVO(this.label, this.url);
}

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);

  final List<SettingsItemVO> listItems = [
    SettingsItemVO(
        "Conditions d'utilisation", '${AppEnv().apiBaseUrl}terms_of_use'),
    SettingsItemVO('Crédits', '${AppEnv().apiBaseUrl}credits'),
    SettingsItemVO('À propos', '${AppEnv().apiBaseUrl}about')
  ];

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
            iconTheme: const IconThemeData(color: Color(0xFF13161C), size: 14),
            backgroundColor: Theme.of(context).colorScheme.background,
            shadowColor: const Color(0x40000000),
            elevation: 10,
            centerTitle: false,
            titleSpacing: 0.0,
            title: Text(AppLocalizations.of(context)!.params,
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
