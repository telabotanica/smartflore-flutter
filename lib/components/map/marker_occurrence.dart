import 'package:flutter/material.dart';
import 'package:smartflore/components/map/marker_condensed.dart';
import 'package:smartflore/components/map/marker_image.dart';

class MarkerOccurrence extends StatefulWidget {
  final int id;
  final String imageUrl;
  final bool? isSelected;

  const MarkerOccurrence({
    Key? key,
    required this.imageUrl,
    required this.id,
    this.isSelected,
  }) : super(key: key);

  @override
  State<MarkerOccurrence> createState() => _MarkerOccurrenceState();
}

class _MarkerOccurrenceState extends State<MarkerOccurrence> {
  bool forceUpdate = false;

  @override
  void didUpdateWidget(MarkerOccurrence oldWidget) {
    // Needed because of the marker layer pooling (marker are reused when outside the screen when map move)
    if (widget.isSelected != oldWidget.isSelected &&
        widget.id == oldWidget.id) {
      forceUpdate = true;
    } else {
      forceUpdate = false;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: forceUpdate ? 300 : 0),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return ScaleTransition(scale: animation, child: child);
      },
      child: widget.isSelected == false
          ? const MarkerCondensed()
          : MarkerImage(url: widget.imageUrl),
    );
  }
}
