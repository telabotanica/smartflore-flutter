import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:smartflore/components/tag.dart';

class SpeciesItem extends StatelessWidget {
  final int index;
  final String titleLatin;
  final String title;
  final String image;
  final List<String> tags;

  const SpeciesItem({
    Key? key,
    required this.index,
    required this.image,
    required this.titleLatin,
    required this.title,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, (index == 0) ? 0 : 15, 0, 15),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                image: NetworkImageWithRetry(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText1),
                const SizedBox(height: 2),
                Text(title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2),
                const SizedBox(height: 6),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      TagUI(label: 'test'),
                      SizedBox(width: 4),
                      TagUI(label: 'test 2'),
                      SizedBox(width: 4),
                      TagUI(label: 'test 3')
                    ]),
              ],
            ),
          )
        ]));
  }
}
