import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class SignUpTextCa extends StatelessWidget {
  final double sizeFont;
  const SignUpTextCa({Key? key, this.sizeFont = 25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign Up',
      style: TextStyle(
        fontSize: sizeFont,
        color: cPrimaryColor,
        fontWeight: FontWeight.w900,
        fontFamily: signFont,
      ),
    );
  }
}
