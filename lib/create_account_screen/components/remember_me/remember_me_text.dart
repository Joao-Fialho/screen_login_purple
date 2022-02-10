import 'package:flutter/material.dart';

class RememberMeText extends StatelessWidget {
  final double sizeFont;
  final double height;
  const RememberMeText({Key? key, this.sizeFont = 14, this.height = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height,
      // color: Colors.white,
      child: FittedBox(
        child: GestureDetector(
          onTap: () {},
          child: Text(
            'Remember me',
            style: TextStyle(),
          ),
        ),
      ),
    );
  }
}
