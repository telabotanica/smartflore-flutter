import 'package:flutter/material.dart';
import 'package:smartflore/components/form/text-input.dart';

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
  final TextStyle? titleStyle;
  final TextStyle? hintStyle;

  const TextFieldWithTitle(
      {Key? key,
      required this.title,
      required this.index,
      this.initValue = '',
      this.isPassword = false,
      this.id,
      this.validator,
      this.keyboardType,
      this.maxLength,
      this.hintText,
      this.onChanged,
      this.onSaved,
      this.errorText,
      this.focusNode,
      this.titleStyle,
      this.hintStyle})
      : super(key: key);

  void handleTextfieldChange(String text, int maxChar, int index, String id) {
    onChanged!(text, maxChar, index, id);
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, textAlign: TextAlign.left, style: titleStyle),
      const SizedBox(height: 12),
      TextInput(
        initialValue: initValue,
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
