import 'package:flutter/material.dart';
import 'package:smartflore/components/image/image_with_loader.dart';
import 'package:smartflore/utils/convert.dart';

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
          SizedBox(
            width: 68,
            height: 68,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(6.0)),
                child: ImageWithLoader(
                    url: '${StringUtils.removeExtension(image)}XS.jpg')),
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
                Text(titleLatin,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyText2),
                const SizedBox(height: 6),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      /*TagUI(label: 'test'),
                  SizedBox(width: 4),
                  TagUI(label: 'test 2'),
                  SizedBox(width: 4),
                  TagUI(label: 'test 3')*/
                    ]),
              ],
            ),
          )
        ]));
  }
}
