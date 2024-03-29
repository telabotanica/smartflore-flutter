import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/components/icons/download_icon.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';
import 'package:smartflore/components/modal/modal_title.dart';
import 'package:smartflore/components/progress_bar.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DownloadCard extends StatefulWidget {
  final int trailId;
  final String title;
  final String? image;
  final int length;
  final int nbOccurence;
  final bool isDownloaded;

  const DownloadCard(
      {Key? key,
      required this.trailId,
      required this.title,
      required this.length,
      required this.image,
      required this.nbOccurence,
      this.isDownloaded = false})
      : super(key: key);

  @override
  State<DownloadCard> createState() => _DownloadCardState();
}

class _DownloadCardState extends State<DownloadCard> {
  late bool isSelected;
  late Box<bool> savedTrailsBox;

  @override
  void initState() {
    super.initState();
    // get the previously opened user box
    savedTrailsBox = Hive.box('savedTrails');
    isSelected = (savedTrailsBox.get('trail_${widget.trailId}')) != null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaveTrailBloc, SaveTrailState>(
      listener: (context, state) {
        state.maybeWhen(
            unSaveError: () => setState(() {
                  isSelected = true;
                }),
            saveError: () => setState(() {
                  isSelected = false;
                }),
            orElse: () {});
      },
      child: Column(children: [
        ModalTitle(
            title: AppLocalizations.of(context).trail_options,
            onClose: () {
              Navigator.of(context).pop();
            }),
        TrailItem(
            isInteractive: false,
            trailId: widget.trailId,
            title: widget.title,
            length: widget.length,
            image: widget.image,
            nbOccurence: widget.nbOccurence),
        const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8)),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const DownloadIcon(),
                      const SizedBox(width: 6),
                      Text(AppLocalizations.of(context).offline,
                          style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(AppLocalizations.of(context).offline_desc,
                      style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: CupertinoSwitch(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value;
                  });
                  if (value) {
                    BlocProvider.of<SaveTrailBloc>(context).add(
                        SaveTrailEvent.saveTrailLocally(id: widget.trailId));
                  } else {
                    BlocProvider.of<SaveTrailBloc>(context).add(
                        SaveTrailEvent.unSaveTrailLocally(id: widget.trailId));
                  }
                },
                trackColor: const Color(0xFFD8DCD8),
                activeColor: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
        buildLoader(context, widget.nbOccurence * 4 + 1)
      ]),
    );
  }
}

Widget buildLoader(BuildContext context, int total) {
  return BlocBuilder<SaveTrailBloc, SaveTrailState>(
    builder: (context, state) {
      return state.maybeWhen(initial: () {
        return Container();
      }, start: () {
        return buildProgressBar(0, total, context);
      }, loading: (nbItemsLoaded, nbItems) {
        return buildProgressBar(nbItemsLoaded, nbItems, context);
      }, loaded: () {
        return Icon(
          SmartFloreIcons.downloaded,
          color: Theme.of(context).colorScheme.primary,
          size: 15,
        );
      }, orElse: () {
        return Container();
      });
    },
  );
}

Widget buildProgressBar(int value, int total, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProgressBar(
          current: value.toDouble(),
          max: total.toDouble(),
          color: Theme.of(context).colorScheme.primary,
          backgroundColor: const Color(0xFFD8DCD8),
        ),
        Text('$value / $total',
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary, fontSize: 12))
      ],
    ),
  );
}
