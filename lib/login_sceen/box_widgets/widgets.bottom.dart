import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/components/sign_in/sign_in_widget.dart';
import 'package:screen_login_purple/login_sceen/components/sign_up_text.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class WidgetsBottom extends StatelessWidget {
  final double height;
  final double width;
  const WidgetsBottom({Key? key, this.height = 100, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.lightGreen,
      height: height,
      width: width,
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SignInWidget(
              // sizeFont: constraints.maxHeight,
              height: constraints.maxHeight * 0.74,
              width: constraints.maxWidth,
            ),
            SignUpText(
              height: constraints.maxHeight * 0.26,
              width: constraints.maxWidth * 1,

              // fontSize: constraints.maxHeight ,
            ),
          ],
        );
      }),
    );
  }
}
