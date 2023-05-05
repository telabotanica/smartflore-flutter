import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:latlong2/latlong.dart';

import 'package:smartflore/bloc/create/create_bloc.dart';
import 'package:smartflore/bloc/map/map_bloc.dart';
import 'package:smartflore/bloc/trails/mytrails_bloc.dart';
import 'package:smartflore/components/form/login.dart';
import 'package:smartflore/components/list/trail/trail_interactive_item.dart';
import 'package:smartflore/components/map/map_widget.dart';
import 'package:smartflore/components/modal.dart';
import 'package:smartflore/components/modal/create_form_name.dart';
import 'package:smartflore/models/trails/trails_model.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class MyTrails extends StatelessWidget {
  final bool isAuth;
  final ScrollController controller;
  final Function onPanUpdate;

  const MyTrails({
    Key? key,
    required this.isAuth,
    required this.controller,
    required this.onPanUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAuth == false
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
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 100),
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: CircularProgressIndicator(),
                    ),
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
                            onPanUpdate: (details) => onPanUpdate(details),
                            child: Center(
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  BlocProvider.of<CreateBloc>(context)
                                      .add(const CreateEvent.start());
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
                                    AppLocalizations.of(context)
                                        .btn_create_trail,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 18),
                        buildItemList(reorderTrailList(trails)),
                      ]);
                },
                dataLoadError: (String message) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
                    child: Center(
                        child: Text(
                      message,
                      textAlign: TextAlign.center,
                    )),
                  );
                },
              );
            },
          );
  }

  List<Trail?> reorderTrailList(List<Trail> trailList) {
    var nonDraftTrails = trailList.where((trail) => trail.status != 'draft');
    var draftTrails = trailList.where((trail) => trail.status == 'draft');
    List<Trail?> orderedList = [];
    orderedList.addAll(nonDraftTrails);
    orderedList.add(null);
    orderedList.addAll(draftTrails);
    return orderedList;
  }

  Widget buildDraftTitleSeparator(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8)),
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              SmartFloreIcons.review,
              color: Theme.of(context).colorScheme.primary,
              size: 22,
            ),
            const SizedBox(width: 8),
            Text(AppLocalizations.of(context).review,
                style: Theme.of(context).textTheme.bodyLarge)
          ],
        ),
        const SizedBox(height: 18),
      ],
    );
  }

  Widget buildItemList(List<Trail?> trailsList) {
    return (trailsList.isNotEmpty)
        ? Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: trailsList.length,
              itemBuilder: (context, index) {
                final Trail? trail = trailsList[index];
                if (trail == null) return buildDraftTitleSeparator(context);
                LatLng startPos =
                    (trail.position != null && trail.position?.start != null)
                        ? trail.position!.start
                        : LatLng(0, 0);
                bool isLast = (index == trailsList.length - 1 ||
                    (index < trailsList.length - 1 &&
                        trailsList[index + 1] == null));
                bool isDraft = trail.status == 'draft';
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
