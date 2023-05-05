import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/form/textinput_with_title.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/modal/modal_title.dart';

class CreateFormNameModal extends StatefulWidget {
  final void Function({bool leaveCreateMode})? onClose;

  const CreateFormNameModal({Key? key, this.onClose}) : super(key: key);

  @override
  State<CreateFormNameModal> createState() => _CreateFormNameModalState();
}

class _CreateFormNameModalState extends State<CreateFormNameModal> {
  final _formKey = GlobalKey<FormState>();
  List<String?> textFieldsValue = [];
  bool isFormProcessing = false;

  @override
  void initState() {
    super.initState();
    isFormProcessing = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateBloc, CreateState>(
      listener: (context, state) {
        state.maybeWhen(registeringName: () {
          setState(() {
            isFormProcessing = true;
          });
        }, nameRegistered: (String name) {
          setState(() {
            isFormProcessing = false;
          });
          if (widget.onClose != null) widget.onClose!();
        }, orElse: () {
          return null;
        });
      },
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            ModalTitle(
              title: "Création d'un nouveau sentier",
              onClose: leaveCreateMode,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: TextFieldWithTitle(
                title: 'Nom du sentier',
                index: 0,
                titleStyle: Theme.of(context).textTheme.titleLarge,
                onSaved: (value) {
                  textFieldsValue.add(value);
                },
              ),
            ),
            SizedBox(
                height: 46,
                child:
                    RoundedButton(label: 'Suivant', onPress: _handleAddTitle))
          ],
        ),
      ),
    );
  }

  void _handleAddTitle() {
    if (!isFormProcessing) {
      textFieldsValue = [];
      _formKey.currentState?.validate();
      _formKey.currentState?.save();
      if (textFieldsValue.length == 1) {
        BlocProvider.of<MapBloc>(context)
            .add(const MapEvent.changeFollowMode(FollowMode.locked));
        BlocProvider.of<CreateBloc>(context)
            .add(CreateEvent.saveTitle(name: textFieldsValue[0] ?? ''));
      }
    }
  }

  leaveCreateMode() {
    if (widget.onClose != null) widget.onClose!(leaveCreateMode: true);
  }
}
