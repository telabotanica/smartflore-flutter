import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/cards/card_bg.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String author;

  const TopBar({Key? key, required this.title, required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardBackground(
        height: 50,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Center(
                          child: Icon(
                            SmartFloreIcons.logoIcon,
                            size: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    // Tricky way to make the two texts closer from each other
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Stack(clipBehavior: Clip.none, children: [
                            Text(title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1),
                            Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Text(author,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyText2),
                            )
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () => {
                  BlocProvider.of<MapBloc>(context)
                      .add(const ChangeMapMode(mapMode: MapMode.preview))
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.close, size: 14, color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
