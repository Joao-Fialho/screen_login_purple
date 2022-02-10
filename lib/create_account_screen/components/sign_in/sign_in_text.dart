import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class SignInText extends StatelessWidget {
  final double sizeFont;
  const SignInText({Key? key, this.sizeFont = 25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Sign In',
      style: TextStyle(
        fontSize: sizeFont,
        color: cPrimaryColor,
        fontWeight: FontWeight.w900,
        fontFamily: signFont,
      ),
    );
  }
}
