import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/view/style.dart';

class TextTitle extends StatelessWidget {
  final double height;
  final String textTitle;

  const TextTitle({Key? key, this.height = 38, this.textTitle = 'Title'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: LayoutBuilder(builder: (context, constraints) {
        return FittedBox(
          child: Text(
            textTitle,
            style: TextStyle(
              color: cPrimaryColor,
              fontSize: constraints.maxHeight,
              fontWeight: FontWeight.w800,
            ),
          ),
        );
      }),
    );
  }
}
