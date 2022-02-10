import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/components/sign_up/sign_up_button_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/sign_up/sign_up_text_ca.dart';

class SignUpWidgetCa extends StatelessWidget {
  final double sizeFont;
  final double height;
  final double width;
  const SignUpWidgetCa(
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
              SignUpTextCa(
                sizeFont: constraints.maxHeight * 0.3,
              ),
              SignUpButtonCa(
                height: constraints.maxHeight * 1,
              ),
            ],
          );
        }),
      ),
    );
  }
}
