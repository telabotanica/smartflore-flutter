import 'package:flutter/material.dart';

class ModalTitle extends StatelessWidget {
  final String title;
  final void Function()? onClose;
  const ModalTitle({Key? key, required this.title, this.onClose})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
          (onClose != null)
              ? Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: onClose,
                    child: const Icon(
                      Icons.close,
                      size: 20.0,
                    ),
                  ),
                )
              : Container()
        ],
      ),
      const SizedBox(height: 20),
      const Divider(height: 1, thickness: 1, color: Color(0xFFD8DCD8))
    ]);
  }
}
