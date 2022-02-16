import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/sign/sign_link.dart';
import 'package:screen_login_purple/view/login_sceen/view/components/sign_in_widget.dart';

class WidgetsBottom extends StatelessWidget {
  final double height;
  final double width;
  const WidgetsBottom({Key? key, this.height = 100, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            SignLink(
              textLink: 'Sign Up',
              localRoute: '/createAccount',
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
