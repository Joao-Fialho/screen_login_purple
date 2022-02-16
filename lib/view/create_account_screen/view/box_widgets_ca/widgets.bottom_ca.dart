import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/sign/sign_link.dart';
import 'package:screen_login_purple/view/create_account_screen/view/components/sign_up_widget.dart';

class WidgetsBottomCa extends StatelessWidget {
  final double height;
  final double width;
  const WidgetsBottomCa({Key? key, this.height = 100, this.width = 0.0})
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
            SignUpWidget(
              // sizeFont: constraints.maxHeight,
              height: constraints.maxHeight * 0.74,
              width: constraints.maxWidth,
            ),
            SignLink(
              textLink: 'Sign In',
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
