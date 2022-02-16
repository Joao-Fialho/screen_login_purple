//TextFormField do app
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screen_login_purple/view/style.dart';

class TextFormFieldApp extends StatelessWidget {
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String textApp;
  final double fontSize;
  final double sizeTop;
  final double sizeBorder;
  final double height;
  final double width;
  const TextFormFieldApp({
    Key? key,
    this.textApp = '',
    this.fontSize = 18,
    this.sizeTop = -20,
    this.sizeBorder = 2,
    this.height = 100,
    this.width = 560,
    this.validator,
    this.inputFormatters = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.fromLTRB(0, sizeTop, 0, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: cEnableBorderTextField, width: sizeBorder / 1.3),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: cPrimaryColor, width: sizeBorder),
          ),
          hintText: textApp,

          hintStyle: TextStyle(color: cTextFieldColor, fontSize: fontSize),
        ),
        validator: validator,
        inputFormatters: inputFormatters,
      ),
    );
  }
}

class CPFMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 14 ||
        !RegExp(r'^([\d-.]+)?$').hasMatch(newValue.text)) {
      return oldValue;
    }
    //xxx.xxx.xxx-xx
    final characteres =
        newValue.text.replaceAll(RegExp(r'\D'), '').characters.toList();
    var formatted = '';
    for (var i = 0; i < characteres.length; i++) {
      if (i == 3) {
        formatted += '.';
        formatted += characteres[i];
      } else if (i == 6) {
        formatted += '.';
        formatted += characteres[i];
      } else if (i == 9) {
        formatted += '-';
        formatted += characteres[i];
      } else {
        formatted += characteres[i];
      }
    }

    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.fromPosition(
        TextPosition(offset: formatted.length),
      ),
    );
  }
}

class PhoneMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length > 16 ||
        !RegExp(r'^([\d ()-]+)?$').hasMatch(newValue.text)) {
      return oldValue;
    }
    //(xx) 9 xxxx-xxxx
    final characteres =
        newValue.text.replaceAll(RegExp(r'\D'), '').characters.toList();
    var formatted = '';
    for (var i = 0; i < characteres.length; i++) {
      if (i == 0) {
        formatted += '(';
        formatted += characteres[i];
      } else if (i == 2) {
        formatted += ') ';
        formatted += characteres[i];
      } else if (i == 3) {
        formatted += ' ';
        formatted += characteres[i];
      } else if (i == 7) {
        formatted += '-';
        formatted += characteres[i];

        // } else if (i == 6) {
        //   formatted += '-';
        //   formatted += characteres[i];
      } else {
        formatted += characteres[i];
      }
    }
    return newValue.copyWith(
      text: formatted,
      selection: TextSelection.fromPosition(
        TextPosition(offset: formatted.length),
      ),
    );
  }
}
