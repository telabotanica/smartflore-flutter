import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/cards/card_bg.dart';
import 'package:smartflore/components/icons/logo_icon.dart';
import 'package:smartflore/components/map/map_widget.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String author;

  const TopBar({Key? key, required this.title, required this.author})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardBackground(
        height: 55,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 8, right: 8),
                        child: LogoIcon()),
                    // Tricky way to make the two texts closer from each other
                    Expanded(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Stack(clipBehavior: Clip.none, children: [
                            Text(title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1),
                            Padding(
                              padding: const EdgeInsets.only(top: 19.0),
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
              SizedBox(
                height: 55,
                width: 55,
                child: TextButton(
                  onPressed: () => {
                    BlocProvider.of<MapBloc>(context)
                        .add(const ChangeMapMode(mapMode: MapMode.preview))
                  },
                  child: const Icon(Icons.close, size: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
