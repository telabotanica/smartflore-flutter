import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class BtnTarget extends StatefulWidget {
  const BtnTarget({Key? key}) : super(key: key);

  @override
  State<BtnTarget> createState() => _BtnTargetState();
}

class _BtnTargetState extends State<BtnTarget> {
  FollowMode followModeUI = FollowMode.free;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapBloc, MapState>(
      listener: (context, state) {
        state.maybeWhen(
            onFollowModeChanged: (FollowMode followMode) {
              setState(() {
                followModeUI = followMode;
              });
            },
            orElse: () {});
      },
      child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: (followModeUI == FollowMode.free)
              ? const Icon(
                  SmartFloreIcons.target,
                  color: Color(0xFF12161E),
                  size: 20,
                )
              : Icon(
                  SmartFloreIcons.targetLocked,
                  color: Theme.of(context).colorScheme.primary,
                  size: 20,
                ),
          onPressed: () {
            BlocProvider.of<MapBloc>(context)
                .add(const MapEvent.requestCenterMap(false));
          }),
    );
  }
}
