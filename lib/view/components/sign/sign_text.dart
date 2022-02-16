import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/style.dart';

class SignText extends StatelessWidget {
  final double sizeFont;
  final String textSign;
  const SignText({Key? key, this.sizeFont = 25, this.textSign = 'Sign'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textSign,
      style: TextStyle(
        fontSize: sizeFont,
        color: cPrimaryColor,
        fontWeight: FontWeight.w900,
        fontFamily: signFont,
      ),
    );
  }
}
