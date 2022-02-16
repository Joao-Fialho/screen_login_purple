import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/sign/sign_button.dart';
import 'package:screen_login_purple/view/components/sign/sign_text.dart';
import 'package:screen_login_purple/view/login_sceen/controller/login_controller.dart';

class SignInWidget extends StatelessWidget {
  final formKey = LoginController().formKey;

  final double sizeFont;
  final double height;
  final double width;
  SignInWidget(
      {Key? key, this.sizeFont = 25, this.height = 0.745, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        // color: Colors.red,
        height: height,
        width: width,
        child: LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SignText(
                sizeFont: constraints.maxHeight * 0.3,
                textSign: 'Sign In',
              ),
              SignButton(
                height: constraints.maxHeight * 1,
                onTap: () {
                  if (formKey.currentState?.validate() ?? false) {
                    Navigator.pushReplacementNamed(context, '/welcome');
                  }
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
