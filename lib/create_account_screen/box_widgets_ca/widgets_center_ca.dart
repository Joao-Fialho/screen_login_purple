import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/components/remember_me_ca/remember_me_widget_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/login_field_ca.dart';

class WidgetsCenterCa extends StatelessWidget {
  final double height;
  const WidgetsCenterCa({Key? key, this.height = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      // color: Colors.amber,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginFieldCa(
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                ),
                Container(
                  height: constraints.maxHeight * 0.1,
                  // color: Colors.blue,
                ),
                Container(
                  // color: Colors.red,
                  height: constraints.maxHeight * 0.25,
                  width: constraints.maxWidth,
                  // color: Colors.red,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RememberMeWidgetCa(
                            height: constraints.maxHeight * 0.4,
                            width: constraints.maxWidth,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
