import 'package:flutter/material.dart';

//cores do app
final Color cPrimaryColor = Colors.indigo.shade600;
final Color cForgotPasswordColor = Colors.indigoAccent;

final Color cTextFieldColor = Colors.blueGrey.shade300;
final Color cEnableBorderTextField = Colors.blueGrey.shade100;
//Fonts Dos Sign
final String signFont = 'Monda';

//TextFormField do app
class TextFormFieldAppCa extends StatelessWidget {
  final String textApp;
  final double fontSize;
  final double sizeTop;
  final double sizeBorder;
  final double height;
  final double width;
  const TextFormFieldAppCa({
    Key? key,
    this.textApp = '',
    this.fontSize = 16,
    this.sizeTop = -20,
    this.sizeBorder = 2,
    this.height = 100,
    this.width = 560,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0, sizeTop, 0, 0),
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
      ),
    );
  }
}
