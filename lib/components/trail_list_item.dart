import 'package:flutter/material.dart';
import 'package:flutter_image/flutter_image.dart';

class TrailListItemWidget extends StatelessWidget {
  final String title;
  final String image;

  const TrailListItemWidget({Key? key, required this.title, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
                      Icons.arrow_right_alt,
                      size: 25,
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
                                Icons.map,
                                size: 12,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              const SizedBox(width: 5),
                              Text('357 m', style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.spa,
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
                            Icons.pin_drop,
                            size: 10,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 2),
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
    /*
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisSize: MainAxisSize.min, children: [
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
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        fit: FlexFit.loose,
                        child: Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(
                            Icons.map,
                            size: 12,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 5),
                          Text('357 m', style: Theme.of(context).textTheme.caption),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(
                            Icons.spa,
                            size: 12,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 5),
                          Text('8 espèces', style: Theme.of(context).textTheme.caption),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.arrow_right_alt,
                  size: 25,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      size: 10,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      'À 250m',
                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const Divider(height: 40, thickness: 1, color: Color(0xFFD8DCD8))
      ],
    );*/
  }
}
