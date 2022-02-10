import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class TextTitle extends StatelessWidget {
  final double height;
  const TextTitle({Key? key, this.height = 38}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Text(
          'Welcome back',
          style: TextStyle(
            color: cPrimaryColor,
            fontSize: constraints.maxHeight,
            fontWeight: FontWeight.w800,
          ),
        );
      }),
    );
  }
}
