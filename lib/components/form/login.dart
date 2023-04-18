import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
          child: Text(AppLocalizations.of(context).need_login,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
            width: 190,
            height: 46,
            child: RoundedButton(
                label: AppLocalizations.of(context).btn_login,
                onPress: () {
                  Navigator.of(context).pushNamed(
                    '/login',
                  );
                })),
        const SizedBox(height: 150),
      ],
    );
  }
}
