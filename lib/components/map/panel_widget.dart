import 'package:flutter/material.dart';

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
          icon: const Icon(Icons.add, size: 18),
          label: const Text("Scanner un sentier"),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListView(padding: EdgeInsets.zero, children: const [
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a vestibulum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut vitae porttitor lectus, quis ultricies urna. Duis quis elit cursus, placerat nunc a, faucibus enim. Morbi vitae varius nulla, ac consectetur nulla. Aenean sollicitudin tortor non aliquam venenatis. Praesent pellentesque imperdiet condimentum. Vestibulum consequat libero interdum, tempor neque et, ultrices justo. In molestie magna sed fringilla mattis. Maecenas dignissim auctor feugiat. Suspendisse ligula erat, aliquet ut fermentum eu, facilisis mollis orci. Nullam consequat elit purus, at dignissim neque congue eget. Ut vel massa id ipsum ultricies mollis. Proin ut metus vitae justo fermentum ullamcorper ut id purus. Donec urna odio, maximus nec est ut, hendrerit tempor velit. Suspendisse elementum non ex eget eleifend. Nulla non nulla nec enim interdum rutrum. Maecenas eu orci et sapien maximus mollis. Quisque tincidunt nibh nec sodales dictum. Pellentesque at luctus nulla, sed volutpat elit. Duis pretium ex ut pharetra finibus. Quisque lacinia est eget enim tempus, eget commodo odio aliquet. Phasellus sed rutrum felis. Pellentesque iaculis commodo molestie. Etiam ac bibendum augue. Quisque pretium bibendum orci a interdum. Vivamus vehicula felis nunc, in vulputate mauris semper vel. Aenean commodo eros vitae ultricies volutpat. Vivamus vel ullamcorper mi, id fringilla est. Cras eu ipsum eget massa pulvinar ultrices. Morbi vitae sollicitudin quam, ut consectetur velit. Nam euismod urna aliquet vehicula aliquet. Duis ut magna vestibulum, commodo felis quis, ullamcorper ipsum. In dolor risus, volutpat ac mattis vel, cursus a mi."),
          ]),
        )
      ],
    );
  }
}
