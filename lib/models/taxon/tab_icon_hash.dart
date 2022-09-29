import 'package:flutter/material.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class TabIconHash {
  static IconData getIcon(String icon) {
    //'card', 'gallery', 'map', 'wikipedia', 'form', 'webview', 'default'

    const Map<String, IconData> tabIcons = {
      'card': SmartFloreIcons.iconDetails,
      'gallery': SmartFloreIcons.iconGallery,
      'map': SmartFloreIcons.iconMap,
      'wikipedia': SmartFloreIcons.iconWiki,
      'form': SmartFloreIcons.iconForm,
      'webview': SmartFloreIcons.iconWebview,
      'default': SmartFloreIcons.iconDefault,
    };

    if (tabIcons[icon] != null) {
      return tabIcons[icon]!;
    } else {
      return tabIcons['default']!;
    }
  }
}
