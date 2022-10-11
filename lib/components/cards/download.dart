import 'package:flutter/material.dart';
import 'package:smartflore/components/list/trail/trail_item.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              'Voulez vous sauvegarder ce sentier sur votre appareil ?',
              textAlign: TextAlign.left,
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
                size: 26.0,
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
      Container(
          padding: EdgeInsets.zero,
          height: 45,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: Theme.of(context).colorScheme.primary),
            borderRadius: const BorderRadius.all(Radius.circular(6)),
          ),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white.withOpacity(0.1),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: () {},
                    child: const Text('Oui',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 45,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Non', style: TextStyle(fontSize: 16)),
                ),
              )),
            ],
          ))
    ]);
  }
}
