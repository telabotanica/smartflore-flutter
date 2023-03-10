import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/topbar/top_bar_create.dart';
import 'package:smartflore/utils/convert.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TopBarCreateUI extends StatefulWidget {
  final MapMode mapMode;

  const TopBarCreateUI({Key? key, required this.mapMode}) : super(key: key);

  @override
  State<TopBarCreateUI> createState() => _TopBarCreateUIState();
}

class _TopBarCreateUIState extends State<TopBarCreateUI> {
  String trailName = '';
  double distance = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateBloc, CreateState>(
      listener: (context, state) {
        state.maybeWhen(
            // WHEN NAME UPDATED
            nameRegistered: (name) => setState(() {
                  trailName = name;
                }),
            // WHEN PATH UPDATED
            updatePath: ((path) => setState(() {
                  distance = LatLngUtils.pathDistance(path.coordinates);
                })),
            //ELSE
            orElse: () {});
      },
      child: AnimatedPositioned(
        top: (widget.mapMode == MapMode.create) ? 20 : -120,
        duration: const Duration(milliseconds: 300),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Center(
                  child: TopBarCreate(
                      title: trailName,
                      isRecording: true,
                      distance: Numbers.convertToKilo(
                          distance,
                          AppLocalizations.of(context).distance_m,
                          AppLocalizations.of(context).distance_km)))),
        )),
      ),
    );
  }
}
