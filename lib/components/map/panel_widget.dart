import 'package:flutter/material.dart';
import 'package:smartflore/components/trail_list_item.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton.icon(
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(
            SmartFloreIcons.qrcode,
            size: 18,
            color: Theme.of(context).textTheme.bodyText1?.color,
          ),
          label: Text("Scanner un sentier", style: Theme.of(context).textTheme.bodyText1),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView(controller: controller, padding: EdgeInsets.zero, children: const [
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
            TrailListItemWidget(),
          ]),
        )
      ],
    );
  }
}
