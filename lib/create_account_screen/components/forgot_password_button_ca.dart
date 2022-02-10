import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class ForgotPasswordButtonCa extends StatelessWidget {
  final double height;
  final double width;

  const ForgotPasswordButtonCa({
    Key? key,
    this.height = 0.0,
    this.width = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: height,
      width: width,
      // color: Colors.black,
      child: GestureDetector(
        onTap: () {},
        child: LayoutBuilder(builder: (context, constraints) {
          return Text(
            'Forgot password?',
            style: TextStyle(
              fontSize: constraints.maxHeight * 0.7,
              color: cForgotPasswordColor,
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.underline,
            ),
          );
        }),
      ),
    );
  }
}
