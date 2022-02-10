import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class TextTitleCa extends StatelessWidget {
  final double height;
  const TextTitleCa({Key? key, this.height = 38}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return Text(
          'Get Started ',
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
