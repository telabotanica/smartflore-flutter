import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String initialValue;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;
  final TextInputType? keyboardType;
  final int? maxLength;
  final String? Function(String?)? validator;
  final String? hintText;
  final FocusNode? focusNode;
  final void Function(String, int, int, String)? onChanged;
  final void Function(String?)? onSaved;
  final int? index;
  final String? id;

  final String? errorText;
  final TextStyle? errorStyle;
  final TextStyle? hintStyle;

  const TextInput(
      {Key? key,
      this.initialValue = '',
      this.obscureText = false,
      this.enableSuggestions = true,
      this.autocorrect = true,
      this.id = '',
      this.keyboardType,
      this.maxLength,
      this.validator,
      this.hintText,
      this.hintStyle,
      this.focusNode,
      this.onChanged,
      this.onSaved,
      this.errorText,
      this.errorStyle,
      this.index})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    TextFormField tf = TextFormField(
      initialValue: widget.initialValue,
      scrollPadding: EdgeInsets.symmetric(vertical: keyboardHeight + 100),
      focusNode: widget.focusNode,
      autovalidateMode: AutovalidateMode.disabled,
      cursorWidth: 1,
      cursorColor: const Color(0xFF47A1D9),
      textInputAction: TextInputAction.next,
      obscureText: widget.obscureText,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      keyboardType: widget.keyboardType,
      maxLength: widget.maxLength,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: (text) {
        widget.onChanged!(text, widget.maxLength!, widget.index!, widget.id!);
      },
      decoration: InputDecoration(
        counterText: '',
        hintText: widget.hintText,
        hintStyle: widget.hintStyle,
        filled: true,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: Colors.white,
        errorStyle: widget.errorStyle,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade700, width: 3),
          borderRadius: BorderRadius.circular(6),
        ),
        contentPadding:
            const EdgeInsets.only(left: 14.0, bottom: 14.0, top: 14.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF555555)),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF47A1D9)),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFE8E8E8)),
          borderRadius: BorderRadius.circular(6),
        ),
        errorText: widget.errorText,
        errorMaxLines: 1,
      ),
    );
    return tf;
  }
}
