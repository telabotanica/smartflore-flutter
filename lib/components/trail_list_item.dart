import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class TrailListItemWidget extends StatelessWidget {
  final String title;
  final String image;
  final int length;

  const TrailListItemWidget({Key? key, required this.title, required this.length, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String distance = (length >= 1000) ? (length / 1000).toStringAsFixed(2) + ' km' : length.toString() + ' m';

    return Column(mainAxisSize: MainAxisSize.min, children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              image: DecorationImage(
                image: NetworkImageWithRetry(
                  'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Text(title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyText1)),
                    const SizedBox(width: 8),
                    Icon(
                      SmartFloreIcons.arrow_right,
                      size: 20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ],
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(
                                SmartFloreIcons.path,
                                size: 12,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 5),
                              Text(distance, style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                SmartFloreIcons.plant,
                                size: 12,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 5),
                              Text('8 espèces', style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            SmartFloreIcons.pin,
                            size: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'À 250m',
                            style: TextStyle(color: Theme.of(context).colorScheme.primary),
                          )
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ],
      ),
      const Divider(height: 40, thickness: 1, color: Color(0xFFD8DCD8))
    ]);
  }
}
