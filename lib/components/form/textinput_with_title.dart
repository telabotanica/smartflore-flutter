import 'package:flutter/material.dart';
import 'package:smartflore/components/form/textinput.dart';

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final String? id;
  final String initValue;
  final String? hintText;
  final bool isPassword;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? index;
  final Function(String, int, int, String)? onChanged;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  final String? errorText;
  final bool isMandatory;
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;
  final TextEditingController? textController;

  const TextFieldWithTitle(
      {Key? key,
      required this.title,
      required this.index,
      this.initValue = '',
      this.isPassword = false,
      this.id,
      this.textController,
      this.validator,
      this.keyboardType,
      this.maxLength,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.errorText,
      this.focusNode,
      this.isMandatory = false,
      this.titleStyle,
      this.hintStyle})
      : super(key: key);

  void handleTextfieldChange(String text, int maxChar, int index, String id) {
    if (onChanged != null) onChanged!(text, maxChar, index, id);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, textAlign: TextAlign.left, style: titleStyle),
          (isMandatory)
              ? Text('Obligatoire',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.bodyText2)
              : Container()
        ],
      ),
      const SizedBox(height: 8),
      TextInput(
        initialValue: initValue,
        textController: textController,
        autocorrect: false,
        hintText: hintText,
        focusNode: focusNode,
        index: index,
        enableSuggestions: false,
        obscureText: isPassword,
        validator: validator,
        keyboardType: keyboardType,
        onChanged: handleTextfieldChange,
        onSaved: onSaved,
        errorText: errorText,
        maxLength: maxLength,
        hintStyle: hintStyle,
      )
    ]);
  }
}
