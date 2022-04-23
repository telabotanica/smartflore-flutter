import 'package:flutter/material.dart';
import 'package:flutter_image/network.dart';

class TrailListItemWidget extends StatelessWidget {
  const TrailListItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                width: 68,
                height: 68,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  image: DecorationImage(
                    image: NetworkImageWithRetry(
                      'https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Le square Blaise Pascal",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Icon(
                          Icons.map,
                          size: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 5),
                        Text("357 m",
                            style: Theme.of(context).textTheme.caption),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(
                          Icons.spa,
                          size: 12,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        const SizedBox(width: 5),
                        Text("8 espèces",
                            style: Theme.of(context).textTheme.caption),
                      ],
                    )
                  ],
                ),
              ),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.arrow_right_alt,
                  size: 25,
                  color: Theme.of(context).colorScheme.primary,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.pin_drop,
                      size: 10,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "À 250m",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        const Divider(height: 40, thickness: 1, color: Color(0xFFD8DCD8))
      ],
    );
  }
}
