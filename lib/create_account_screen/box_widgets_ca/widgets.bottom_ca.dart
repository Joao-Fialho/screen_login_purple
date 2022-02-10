import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/components/sign_in_text_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/sign_up/sign_up_widget_ca.dart';

class WidgetsBottomCa extends StatelessWidget {
  final double height;
  final double width;
  const WidgetsBottomCa({Key? key, this.height = 100, this.width = 0.0})
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
            SignUpWidgetCa(
              // sizeFont: constraints.maxHeight,
              height: constraints.maxHeight * 0.74,
              width: constraints.maxWidth,
            ),
            SignInTextCa(
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
