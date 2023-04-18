import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartflore/bloc/auth/auth_bloc.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/components/icons/logo_icon.dart';
import 'package:smartflore/models/user/user_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  List<String?> textFieldsValue = [];
  bool isFormProcessing = false;
  AuthenticationResponse? response;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
            loginCompleted: () {
              Navigator.of(context).pop();
            },
            loginError: (authResponse) {
              setState(() {
                response = authResponse;
              });
            },
            orElse: () {});
      },
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
                                style: Theme.of(context).textTheme.titleLarge),
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
                      style: Theme.of(context).textTheme.displayLarge),
                  buildForm(context)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  _handleForm() {
    if (!isFormProcessing) {
      textFieldsValue = [];
      _formKey.currentState?.validate();
      _formKey.currentState?.save();
      if (textFieldsValue.length == 2) {
        BlocProvider.of<AuthBloc>(context).add(AuthEvent.login(AuthLogin(
            login: textFieldsValue[0] ?? '',
            password: textFieldsValue[1] ?? '')));
      }
    }
  }

  Widget buildForm(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            TextFieldWithTitle(
              id: 'email',
              index: 0,
              title: 'Login',
              hintText: 'example@example.com',
              keyboardType: TextInputType.emailAddress,
              titleStyle: Theme.of(context).textTheme.titleLarge,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black.withOpacity(0.4)),
              onSaved: (value) {
                textFieldsValue.add(value);
              },
            ),
            const SizedBox(height: 16),
            TextFieldWithTitle(
              id: 'pwd',
              index: 0,
              title: 'Mot de passe',
              hintText: '********',
              isPassword: true,
              titleStyle: Theme.of(context).textTheme.titleLarge,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black.withOpacity(0.4)),
              onSaved: (value) {
                textFieldsValue.add(value);
              },
            ),
            (response != null && response!.isOk == false)
                ? _buildError(Theme.of(context))
                : Container(),
            const SizedBox(height: 25),
            SizedBox(
              height: 50,
              child: TextButton(
                  onPressed: () {
                    _handleForm();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
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
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.zero),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ))),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).btn_login,
                      style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.background),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildError(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(response!.message ?? '',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyLarge!
              .copyWith(color: theme.colorScheme.error)),
    );
  }
}
