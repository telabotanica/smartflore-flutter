import 'package:flutter/material.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/components/modal/modal_title.dart';

class CreateTitleModal extends StatelessWidget {
  final void Function()? onClose;
  const CreateTitleModal({Key? key, this.onClose}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModalTitle(
          title: "Création d'un nouveau sentier",
          onClose: onClose,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
          child: TextFieldWithTitle(
            title: 'Titre du sentier',
            index: 0,
            titleStyle: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 46, child: RoundedButton(label: 'Suivant'))
      ],
    );
  }
}
