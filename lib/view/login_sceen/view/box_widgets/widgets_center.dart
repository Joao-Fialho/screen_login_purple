import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/login_sceen/view/components/forgot_password_button.dart';
import 'package:screen_login_purple/view/login_sceen/view/components/login_field.dart';
import 'package:screen_login_purple/view/login_sceen/view/components/remember_me/remember_me_widget.dart';

class WidgetsCenter extends StatelessWidget {
  final double height;
  const WidgetsCenter({Key? key, this.height = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // color: Colors.amber,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginField(
                height: constraints.maxHeight * 0.65,
                width: constraints.maxWidth,
              ),
              Container(
                height: constraints.maxHeight * 0.05,
                // color: Colors.blue,
              ),
              SizedBox(
                // color: Colors.red,
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                // color: Colors.red,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RememberMeWidget(
                        height: constraints.maxHeight * 0.4,
                        width: constraints.maxWidth * 0.4,
                      ),
                      ForgotPasswordButton(
                        height: constraints.maxHeight * 0.4,
                        width: constraints.maxWidth * 0.6,
                      ),
                    ],
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
