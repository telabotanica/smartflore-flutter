import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smartflore/components/cards/card_bg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartflore/themes/smart_flore_icons_icons.dart';

class TopBarCreate extends StatelessWidget {
  final String title;
  final bool isRecording;
  final String distance;

  const TopBarCreate(
      {Key? key,
      required this.title,
      required this.isRecording,
      required this.distance})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardBackground(
        height: 46,
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SizedBox(
                              width: 25,
                              height: 25,
                              child: SvgPicture.asset(
                                  'assets/graphics/rec_icon.svg'))
                          .animate(
                            // this delay only happens once at the very start
                            onPlay: (controller) => controller.repeat(), // loop
                          )
                          .fadeIn(duration: 1000.ms, curve: Curves.easeInOut)
                          .fadeOut(
                              delay: 1000.ms,
                              duration: 1000.ms,
                              curve: Curves.easeInOut),
                    ),
                    // Tricky way to make the two texts closer from each other
                    Expanded(
                      child: Text(title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyLarge),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Icon(
                      SmartFloreIcons.path,
                      size: 18,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(distance,
                        style: Theme.of(context).textTheme.bodyMedium)
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
