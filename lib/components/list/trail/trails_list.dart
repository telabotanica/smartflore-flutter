import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:smartflore/bloc/auth/auth_bloc.dart';
import 'package:smartflore/bloc/trails/trails_bloc.dart';
import 'package:smartflore/components/buttons/rounded_button.dart';
import 'package:smartflore/components/list/trail/trail_interactive_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum TrailsListType { allTrails, myTrails }

class TrailsList extends StatelessWidget {
  final ScrollController controller;
  final TrailsListType trailsListType;
  final Function onPanUpdate;
  final Box<dynamic> savedTrailsBox;
  final bool isAuth;
  const TrailsList(
      {Key? key,
      required this.controller,
      required this.onPanUpdate,
      this.trailsListType = TrailsListType.allTrails,
      required this.savedTrailsBox,
      required this.isAuth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (trailsListType == TrailsListType.myTrails) {
      return (isAuth == true)
          ? Container(
              width: 200,
              height: 100,
              color: Colors.green,
              child: SizedBox(
                width: 150,
                height: 46,
                child: RoundedButton(
                  label: 'logout',
                  onPress: () {
                    BlocProvider.of<AuthBloc>(context)
                        .add(const AuthEvent.logout());
                  },
                ),
              ))
          : buildMyTrailLogout(context);
    }

    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onPanUpdate: (details) => onPanUpdate(details),
              child: Container()
              /*Center(
              child: OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: Icon(
                  SmartFloreIcons.qrcode,
                  size: 18,
                  color: Theme.of(context).textTheme.bodyLarge?.color,
                ),
                label: Text(AppLocalizations.of(context).btn_scan_trail, style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),*/
              ),
        ),
        const SizedBox(height: 16),
        BlocBuilder<TrailsBloc, TrailsDataState>(
          builder: (context, state) {
            if (state is TrailsDataInitialState) {
              return const CircularProgressIndicator();
            } else if (state is TrailsDataErrorState) {
              return Text(AppLocalizations.of(context).error_API,
                  style: const TextStyle(color: Colors.red));
            } else if (state is TrailsDataLoadedState) {
              return Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  controller: controller,
                  itemCount: state.trails.length,
                  itemBuilder: (context, index) {
                    final trail = state.trails[index];

                    return TrailInteractiveItemWidget(
                      index: index,
                      id: trail.id,
                      title: trail.name,
                      length: trail.pathLength,
                      image: trail.image!.url,
                      position: trail.position.start,
                      nbOccurence: trail.occurrencesCount,
                      isDownloaded:
                          (savedTrailsBox.get('trail_${trail.id}')) != null,
                    );
                  },
                ),
              );
            } else {
              return Container();
            }
          },
        )
      ],
    );
  }

  Widget buildMyTrailLogout(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
          child: Text(AppLocalizations.of(context).need_login,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        SizedBox(
            width: 190,
            height: 46,
            child: RoundedButton(
                label: AppLocalizations.of(context).btn_login,
                onPress: () {
                  Navigator.of(context).pushNamed(
                    '/login',
                  );
                })),
        const SizedBox(height: 150),
      ],
    );
  }
}
