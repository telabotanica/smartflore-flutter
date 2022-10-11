import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/trail/save_trail_bloc.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';
import 'package:smartflore/components/progress_bar.dart';

class DownloadCard extends StatefulWidget {
  final int trailId;
  final String title;
  final String? image;
  final int length;
  final int nbOccurence;

  const DownloadCard(
      {Key? key,
      required this.trailId,
      required this.title,
      required this.length,
      required this.image,
      required this.nbOccurence})
      : super(key: key);

  @override
  State<DownloadCard> createState() => _DownloadCardState();
}

class _DownloadCardState extends State<DownloadCard> {
  late bool isSelected;

  @override
  void initState() {
    readDataFromHive();
    isSelected = false;
    super.initState();
  }

  void readDataFromHive() async {
    var boxSavedTrail = await Hive.openBox('saved_trails');
    dynamic test = boxSavedTrail.get('trail_${widget.trailId}');
    if (test != null) {
      setState(() {
        isSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'Options du sentier',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(
                Icons.close,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8)),
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
                Text('Mode Hors ligne',
                    style: Theme.of(context).textTheme.headline6),
                Text('Sauvegarder la fiche sentier sur votre appareil',
                    style: Theme.of(context).textTheme.caption)
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
                  BlocProvider.of<SaveTrailBloc>(context)
                      .add(SaveTrailEvent.saveTrailLocally(id: widget.trailId));
                }
              },
              trackColor: const Color(0xFFD8DCD8),
              activeColor: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      buildLoader(context, widget.nbOccurence * 4 + 1)
    ]);
  }
}

Widget buildLoader(BuildContext context, int total) {
  return BlocBuilder<SaveTrailBloc, SaveTrailState>(
    builder: (context, state) {
      return state.when(
        initial: () {
          return Container();
        },
        start: () {
          return buildProgressBar(0, total, context);
        },
        loading: (nbItemsLoaded, nbItems) {
          return buildProgressBar(nbItemsLoaded, nbItems, context);
        },
        loaded: () {
          return Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.primary,
          );
        },
      );
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
