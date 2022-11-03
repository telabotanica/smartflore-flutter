import 'package:flutter/material.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

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
            shadowColor: const Color(0x00000000),
            centerTitle: false,
            titleSpacing: 0.0,
            title: Text('Ajouter un individu',
                style: Theme.of(context).textTheme.bodyText1)),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(36.0, 16, 36, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldWithTitle(
                isMandatory: true,
                id: 'taxonName',
                index: 0,
                title: "Nom de l'espèce",
                hintText: '',
                keyboardType: TextInputType.emailAddress,
                titleStyle: Theme.of(context).textTheme.headline6,
                hintStyle: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.black.withOpacity(0.4)),
                onSaved: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Ajouter une photo',
                        style: Theme.of(context).textTheme.headline6),
                    Text('Obligatoire',
                        style: Theme.of(context).textTheme.bodyText2),
                  ],
                ),
              ),
              SizedBox(
                  height: 46,
                  child: RoundedButton(
                      label: '',
                      onPress: () {
                        Navigator.of(context).pushNamed('/camera');
                      },
                      icon: SmartFloreIcons.iconPhoto))
            ],
          ),
        ));
  }
}
