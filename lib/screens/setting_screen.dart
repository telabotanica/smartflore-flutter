import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/_env/app_env.dart';
import 'package:smartflore/bloc/auth/auth_bloc.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/screens/webview/webview_screen_ctrl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsItemVO {
  final String label;
  final String url;
  SettingsItemVO(this.label, this.url);
}

class SettingsScreen extends StatefulWidget {
  final bool isAuth;
  const SettingsScreen({Key? key, required this.isAuth}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<SettingsItemVO> listItems = [
    SettingsItemVO(
        "Conditions d'utilisation", '${AppEnv().apiBaseUrl}/terms_of_use'),
    SettingsItemVO('Crédits', '${AppEnv().apiBaseUrl}/credits'),
    SettingsItemVO('À propos', '${AppEnv().apiBaseUrl}/about')
  ];

  bool isAuth = false;

  @override
  void initState() {
    isAuth = widget.isAuth;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(authStatus: (status) {
          setState(() {
            isAuth = status;
          });
        });

        // TODO: implement listener
      },
      child: Scaffold(
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
              iconTheme:
                  const IconThemeData(color: Color(0xFF13161C), size: 14),
              backgroundColor: Theme.of(context).colorScheme.background,
              shadowColor: const Color(0x40000000),
              elevation: 10,
              centerTitle: false,
              titleSpacing: 0.0,
              title: Text(AppLocalizations.of(context).params,
                  style: Theme.of(context).textTheme.bodyLarge)),
          body: Stack(
            children: [
              ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return TextButton(
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(0))),
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
                                bottom: BorderSide(
                                    width: 1.0, color: Color(0xFFCCCCCC))),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                            child: Text(
                              listItems[index].label,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          )));
                },
              ),
              SafeArea(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: const EdgeInsets.all(36.0),
                      child: SizedBox(
                        height: 50,
                        child: RoundedButton(
                          outline: isAuth ? true : false,
                          onPress: () {
                            isAuth
                                ? BlocProvider.of<AuthBloc>(context)
                                    .add(const AuthEvent.logout())
                                : Navigator.of(context).pushNamed(
                                    '/login',
                                  );
                          },
                          label: isAuth
                              ? AppLocalizations.of(context).logout
                              : AppLocalizations.of(context).btn_login,
                        ),
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
