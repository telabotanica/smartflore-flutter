import 'package:flutter/material.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
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
        const RoundedButton(label: 'Suivant')
      ],
    );
  }
}
