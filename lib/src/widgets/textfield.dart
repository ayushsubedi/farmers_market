import 'package:farmers_market/src/styles/textfields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final bool isIOS;
  final String hintText;
  final IconData materialIcon;
  final IconData cupertinoIcon;
  final TextInputType textInputType;
  final bool obscureText;

  AppTextField({
    @required this.isIOS,
    @required this.hintText,
    @required this.materialIcon,
    @required this.cupertinoIcon,
    this.textInputType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    if (isIOS) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: CupertinoTextField(
            keyboardType:
                (textInputType != null) ? textInputType : TextInputType.text,
            padding: EdgeInsets.all(12.0),
            placeholder: hintText,
            textAlign: TextFieldStyles.textAlign,
            placeholderStyle: TextFieldStyles.placeholder,
            style: TextFieldStyles.text,
            cursorColor: TextFieldStyles.cursorColor,
            prefix: TextFieldStyles.iconPrefix(cupertinoIcon),
            obscureText: (obscureText != null) ? obscureText : false,
            decoration: TextFieldStyles.cupertinoDecoration),
      );
    } else {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: TextFieldStyles.textBoxHorizontal,
            vertical: TextFieldStyles.textBoxVertical),
        child: TextField(
          keyboardType:
              (textInputType != null) ? textInputType : TextInputType.text,
          style: TextFieldStyles.text,
          cursorColor: TextFieldStyles.cursorColor,
          obscureText: (obscureText != null) ? obscureText : false,
          textAlign: TextFieldStyles.textAlign,
          decoration:
              TextFieldStyles.materialDecoration(hintText, materialIcon),
        ),
      );
    }
  }
}
