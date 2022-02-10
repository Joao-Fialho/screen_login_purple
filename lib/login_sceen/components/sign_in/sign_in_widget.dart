import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/components/sign_in/sign_in_button.dart';
import 'package:screen_login_purple/login_sceen/components/sign_in/sign_in_text.dart';

class SignInWidget extends StatelessWidget {
  final double sizeFont;
  final double height;
  final double width;
  const SignInWidget(
      {Key? key, this.sizeFont = 25, this.height = 0.745, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        // color: Colors.red,
        height: height,
        width: width,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignInText(
                sizeFont: constraints.maxHeight * 0.3,
              ),
              SignInButton(
                height: constraints.maxHeight * 1,
              ),
            ],
          );
        }),
      ),
    );
  }
}
