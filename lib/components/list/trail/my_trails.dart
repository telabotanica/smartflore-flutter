import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/mytrails_bloc.dart';
import 'package:smartflore/components/form/login.dart';
import 'package:smartflore/components/list/trail/trail_interactive_item.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/modal.dart';
import 'package:smartflore/components/modal/create_form_name.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyTrails extends StatefulWidget {
  final bool isAuth;
  final ScrollController controller;
  final Function onPanUpdate;

  const MyTrails(
      {Key? key,
      this.isAuth = true,
      required this.controller,
      required this.onPanUpdate})
      : super(key: key);

  @override
  State<MyTrails> createState() => _MyTrailsState();
}

class _MyTrailsState extends State<MyTrails> {
  bool isLoading = false;
  bool onError = false;
  List<Trail> trails = [];

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.isAuth == false
        ? const LoginForm()
        : BlocBuilder<MyTrailsBloc, MyTrailsState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const Center(
                      child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ));
                },
                dataLoading: () {
                  return const Center(
                      child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(),
                  ));
                },
                dataLoaded: (trails) {
                  List<Trail> draftList = [];
                  List<Trail> okList = [];
                  Trail current;
                  for (var i = 0; i < trails.length; i++) {
                    current = trails[i];
                    (current.status == 'draft')
                        ? draftList.add(current)
                        : okList.add(current);
                  }

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onPanUpdate: (details) => widget.onPanUpdate(details),
                          child: Center(
                            child: OutlinedButton.icon(
                              onPressed: () {
                                BlocProvider.of<MapBloc>(context).add(
                                    const MapEvent.changeMapMode(
                                        MapMode.create));
                                showDialog(
                                    context: context,
                                    builder: (context) =>
                                        Modal(CreateFormNameModal(onClose: (
                                            {bool leaveCreateMode = false}) {
                                          if (leaveCreateMode) {
                                            BlocProvider.of<MapBloc>(context)
                                                .add(const MapEvent
                                                        .changeMapMode(
                                                    MapMode.overview));
                                          }
                                          Navigator.of(context).pop();
                                        })),
                                    barrierColor:
                                        Colors.black.withOpacity(0.1));
                              },
                              icon: Icon(
                                SmartFloreIcons.add_circle_outline,
                                size: 18,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.color,
                              ),
                              label: Text(
                                  AppLocalizations.of(context).btn_create_trail,
                                  style: Theme.of(context).textTheme.bodyLarge),
                            ),
                          ),
                        ),
                      ),
                      buildItemList(okList),
                      draftList.isNotEmpty
                          ? Column(
                              children: [
                                const SizedBox(height: 18),
                                const Divider(
                                    height: 1,
                                    thickness: 1,
                                    color: Color(0xFFD8DCD8)),
                                const SizedBox(height: 16),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      SmartFloreIcons.review,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      size: 22,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(AppLocalizations.of(context).review,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge)
                                  ],
                                ),
                                const SizedBox(height: 18),
                              ],
                            )
                          : Container(),
                      buildItemList(draftList, isDraft: true)
                    ],
                  );
                },
                dataLoadError: () {
                  return const Center(child: Text('Error'));
                },
              );
            },
          );
  }

  Widget buildItemList(List<Trail> trailsList, {bool isDraft = false}) {
    return (trailsList.isNotEmpty)
        ? Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              controller: widget.controller,
              itemCount: trailsList.length,
              itemBuilder: (context, index) {
                final Trail trail = trailsList[index];
                LatLng startPos =
                    (trail.position != null && trail.position?.start != null)
                        ? trail.position!.start
                        : LatLng(0, 0);
                bool isLast = (index == trailsList.length - 1);
                print('>>> isLast : $isLast');
                return Opacity(
                  opacity: isDraft ? 0.5 : 1,
                  child: TrailInteractiveItemWidget(
                      index: index,
                      id: trail.id,
                      title: trail.name,
                      length: trail.pathLength,
                      image: trail.image != null ? trail.image!.url : null,
                      position: startPos,
                      nbOccurence: trail.occurrencesCount,
                      isDownloaded: false,
                      isInteractive: !isDraft,
                      isLast: isLast),
                );
              },
            ),
          )
        : Container();
  }
}
