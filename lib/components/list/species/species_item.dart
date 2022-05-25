import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image/flutter_image.dart';
import 'package:smartflore/bloc/geolocation/geolocation_bloc.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

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
      padding: EdgeInsets.fromLTRB(0, (index == 0) ? 0 : 20, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Text(title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodyText1)),
                    const SizedBox(width: 8),
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
                              Text('8 espèces',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            SmartFloreIcons.marker,
                            size: 15,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          const SizedBox(width: 4),
                          BlocBuilder<GeolocationBloc, GeolocationState>(
                            builder: (context, state) {
                              if (state is LocationUpdatedState) {
                                return Text(
                                  'À',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                );
                              } else {
                                return Container();
                              }
                            },
                          )
                        ],
                      )
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
