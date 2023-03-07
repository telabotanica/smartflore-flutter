import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/components/icons/logo_icon.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(children: [
          SvgPicture.asset('assets/graphics/dots_bg.svg',
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.secondary),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          Text('Retour',
                              style: Theme.of(context).textTheme.headline6),
                        ],
                      ),
                    ),
                  ),
                ),
                const LogoIcon(
                    backgroundSize: 136, iconSize: 76, boarderRadius: 24),
                const SizedBox(height: 40),
                Text("Smart'Flore",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
                Padding(
                  padding: const EdgeInsets.all(36.0),
                  child: Column(
                    children: [
                      TextFieldWithTitle(
                        id: 'email',
                        index: 0,
                        title: 'Login',
                        hintText: 'example@example.com',
                        keyboardType: TextInputType.emailAddress,
                        titleStyle: Theme.of(context).textTheme.headline6,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.black.withOpacity(0.4)),
                        onSaved: (value) {},
                      ),
                      const SizedBox(height: 16),
                      TextFieldWithTitle(
                        id: 'pwd',
                        index: 0,
                        title: 'Mot de passe',
                        hintText: 'password',
                        isPassword: true,
                        titleStyle: Theme.of(context).textTheme.headline6,
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(color: Colors.black.withOpacity(0.4)),
                        onSaved: (value) {},
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        height: 50,
                        child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.disabled)) {
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.5);
                                  }
                                  return Theme.of(context).colorScheme.primary;
                                }),
                                overlayColor: MaterialStateProperty.all<Color>(
                                    Colors.white.withOpacity(0.12)),
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(EdgeInsets.zero),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                ))),
                            child: Center(
                              child: Text(
                                'Se connecter',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                              ),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    ));
  }
}
