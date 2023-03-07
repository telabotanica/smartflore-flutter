import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/form/checkbox_with_label.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';
import 'package:smartflore/components/modal/modal_title.dart';
import 'package:smartflore/models/checkbox_state.dart';
import 'package:smartflore/models/create/create_model.dart';
import 'package:smartflore/utils/convert.dart';

class CreateEndModal extends StatefulWidget {
  final void Function()? onClose;

  const CreateEndModal({Key? key, this.onClose}) : super(key: key);

  @override
  State<CreateEndModal> createState() => _CreateEndModalState();
}

class _CreateEndModalState extends State<CreateEndModal> {
  final _formKey = GlobalKey<FormState>();
  final GroupButtonController controller = GroupButtonController();
  final List<CheckBoxState> bestPeriod = [
    CheckBoxState(index: 0, title: 'Printemps'),
    CheckBoxState(index: 1, title: 'Été'),
    CheckBoxState(index: 2, title: 'Automne'),
    CheckBoxState(index: 3, title: 'Hiver'),
  ];
  late Box<CreateTrail> createBox;

  final List<String> pmr = ['Non', 'Je ne sais pas', 'Oui'];

  @override
  void initState() {
    controller.selectIndex(1);
    createBox = Hive.box('create');

    super.initState();
  }

  String? getFirstTrailImage(CreateTrail? createTrail) {
    if (createTrail == null) return null;
    String firstImage = '_path_placeholder';

    if (createTrail.occurrences.isNotEmpty) {
      int index = 0;

      for (int i = 0; i < createTrail.occurrences.length; i++) {
        if (createTrail.occurrences[i].images.isNotEmpty) {
          firstImage = createTrail.occurrences[i].images[0].url;
          break;
        }
      }
    }

    return firstImage;
  }

  @override
  Widget build(BuildContext context) {
    CreateTrail? createTrail = createBox.get('current');
    String? firstImageUrl = getFirstTrailImage(createTrail);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModalTitle(
            title: 'Voulez vous enregistrer votre sentier ?',
            onClose: widget.onClose,
          ),
          const SizedBox(height: 16),
          TrailItem(
            isInteractive: false,
            index: 0,
            length:
                LatLngUtils.pathDistance(createTrail!.path.coordinates).toInt(),
            nbOccurence: createTrail.occurrences.length,
            title: createTrail.name,
            image: firstImageUrl,
            trailId: 1,
          ),
          const SizedBox(height: 20),
          Text('Le sentier est il accessible PMR ?',
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 8),
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: const BorderRadius.all(Radius.circular(6))),
              child: GroupButton(
                  controller: controller,
                  isRadio: true,
                  options: const GroupButtonOptions(
                    groupingType: GroupingType.row,
                    spacing: 0,
                  ),
                  buttons: pmr,
                  onSelected: (val, i, selected) =>
                      debugPrint('===> Button: $val index: $i $selected'),
                  buttonIndexedBuilder: (selected, index, context) {
                    return Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: (index == 1)
                            ? constraints.maxWidth / 2 - 2
                            : constraints.maxWidth / 4,
                        decoration: BoxDecoration(
                          color: (selected)
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context)
                                  .colorScheme
                                  .background
                                  .withOpacity(0),
                          border: (index == 1)
                              ? Border(
                                  top: BorderSide(
                                      color: Colors.white.withOpacity(0)),
                                  left: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  right: BorderSide(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  bottom: BorderSide(
                                      color: Colors.white.withOpacity(0)),
                                )
                              : Border.all(color: const Color(0x00FFFFFF)),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Text(pmr[index],
                            style:
                                (selected)
                                    ? Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(color: Colors.white)
                                    : Theme.of(context)
                                        .textTheme
                                        .headline6
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary)),
                      ),
                    );
                  }),
            );
          }),
          const SizedBox(height: 20),
          Text('Quelle est la saison idéale pour observer ce parcours',
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(height: 8),
          ...bestPeriod.map(buildCheckBox).toList(),
          const SizedBox(height: 20),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: SizedBox(
                      height: 46,
                      child: RoundedButton(
                          outline: true, label: 'Annuler', onPress: () {}))),
              const SizedBox(width: 10),
              Expanded(
                  child: SizedBox(
                      height: 46,
                      child:
                          RoundedButton(label: 'Enregistrer', onPress: () {}))),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCheckBox(CheckBoxState state) {
    return CheckBoxWithTitle(
      height: 30,
      activeColor: Theme.of(context).colorScheme.primary,
      checkboxShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkboxSide: BorderSide(color: Theme.of(context).colorScheme.primary),
      value: state.value,
      onChanged: (value) {
        setState(() {
          state.value = value!;
        });
      },
      title: Text(state.title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Colors.black)),
    );
  }
}
