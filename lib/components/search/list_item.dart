import 'package:flutter/material.dart';

class ListItemUI extends StatelessWidget {
  final TextStyle? defaultScientificStyle;
  final TextStyle? defaultCommonStyle;
  final TextStyle? matchScientificStyle;
  final TextStyle? matchCommonStyle;
  final String scientificName;
  final String commonName;

  const ListItemUI(
      {Key? key,
      required this.scientificName,
      required this.commonName,
      this.defaultScientificStyle,
      this.defaultCommonStyle,
      this.matchScientificStyle,
      this.matchCommonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            child: (Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                scientificName != ''
                    ? RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: defaultScientificStyle,
                          children: [
                            ...spanBuilder(scientificName,
                                matchStyle: matchScientificStyle)
                          ],
                        ),
                      )
                    : Container(),
                commonName != ''
                    ? RichText(
                        text: TextSpan(
                          style: defaultCommonStyle,
                          children: [
                            ...spanBuilder(commonName,
                                matchStyle: matchCommonStyle)
                          ],
                        ),
                      )
                    : Container(),
              ],
            )),
          ),
          Container(
            height: 1,
            color: const Color(0xFFD8DCD8),
          )
        ],
      ),
    );
  }

  List<TextSpan> spanBuilder(String text,
      {TextStyle? matchStyle = const TextStyle(
        fontSize: 14.0,
        color: Colors.red,
      )}) {
    List<TextSpan> spanList = [];
    RegExp exp = RegExp(r'<.*?>');
    RegExp expEm = RegExp(r'<em>(.*?)<\/em>');

    List<String> splitList = text.split(exp);
    List<String?> matchList =
        expEm.allMatches(text).map((match) => match.group(1)).toList();

    for (var element in splitList) {
      if (matchList.contains(element)) {
        spanList.add(TextSpan(text: element, style: matchStyle));
      } else {
        spanList.add(TextSpan(text: element));
      }
    }

    return spanList;
  }
}
