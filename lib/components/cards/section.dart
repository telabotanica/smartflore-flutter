import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:smartflore/models/taxon/taxon_model.dart';
import 'package:smartflore/screens/webview/webview_screen_ctrl.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class Section extends StatelessWidget {
  final SectionAPI sectionData;
  final bool hasSeparator;
  const Section({Key? key, required this.sectionData, this.hasSeparator = true})
      : super(key: key);

  IconData getIcon(String type) {
    switch (type) {
      case 'Description': //Not optimal, if title tabb change or is localized...
        return SmartFloreIcons.plant;
      case 'Usages':
        return SmartFloreIcons.usage;
      case 'Écologie & habitat':
        return SmartFloreIcons.ecology;
      case 'Sources':
        return SmartFloreIcons.source;
      default:
        return SmartFloreIcons.plant;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Icon(
            getIcon(sectionData.title),
            size: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 10),
          Text(sectionData.title, style: Theme.of(context).textTheme.headline3)
        ]),
        Html(
          data: sectionData.text,
          onLinkTap: (String? url, RenderContext renderContext,
              Map<String, String> attributes, dom.Element? element) {
            //open URL in webview, or launch URL in browser, or any other logic here
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebViewPage(title: url, url: url),
              ),
            );
          },
        ),
        (hasSeparator)
            ? Container(
                margin: const EdgeInsets.symmetric(vertical: 16),
                height: 1,
                color: const Color(0xffD8DCD8),
              )
            : Container()
      ],
    );
  }
}
