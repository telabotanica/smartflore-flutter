import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/modal/modal_title.dart';

class CreateConfirmModal extends StatefulWidget {
  final void Function()? onClose;

  const CreateConfirmModal({Key? key, this.onClose}) : super(key: key);

  @override
  State<CreateConfirmModal> createState() => _CreateConfirmModalState();
}

class _CreateConfirmModalState extends State<CreateConfirmModal> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ModalTitle(
          title: 'Êtes vous sûr de vouloir annuler la création du sentier ?',
          onClose: () {
            Navigator.of(context).pop();
          },
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
          child:
              Text('Les données ne seront pas conservées sur votre appareil.'),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: SizedBox(
                    height: 46,
                    child: RoundedButton(
                        outline: true,
                        label: 'Non',
                        onPress: () {
                          Navigator.of(context).pop();
                        }))),
            const SizedBox(width: 10),
            Expanded(
                child: SizedBox(
                    height: 46,
                    child: RoundedButton(
                        label: 'Oui',
                        onPress: () {
                          if (widget.onClose != null) widget.onClose!();
                          BlocProvider.of<MapBloc>(context).add(
                              const MapEvent.changeMapMode(MapMode.overview));
                          Navigator.of(context).pop();
                        }))),
          ],
        ),
      ],
    );
  }
}
