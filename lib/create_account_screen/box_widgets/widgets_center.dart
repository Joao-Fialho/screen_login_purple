import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/components/forgot_password_button_ca.dart';
import 'package:screen_login_purple/create_account_screen/login_sceen/components/login_field_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/remember_me/remember_me_widget_ca.dart';

class WidgetsCenter extends StatelessWidget {
  final double height;
  const WidgetsCenter({Key? key, this.height = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      // color: Colors.amber,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginFieldCa(
                height: constraints.maxHeight * 0.65,
                width: constraints.maxWidth,
              ),
              Container(
                height: constraints.maxHeight * 0.05,
                // color: Colors.blue,
              ),
              Container(
                // color: Colors.red,
                height: constraints.maxHeight * 0.3,
                width: constraints.maxWidth,
                // color: Colors.red,
                child: LayoutBuilder(builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RememberMeWidgetCa(
                        height: constraints.maxHeight * 0.4,
                        width: constraints.maxWidth * 0.4,
                      ),
                      ForgotPasswordButtonCa(
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
