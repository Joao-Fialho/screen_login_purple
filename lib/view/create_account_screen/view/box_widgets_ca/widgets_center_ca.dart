import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/create_account_screen/view/components/create_account_field.dart';
import 'package:screen_login_purple/view/create_account_screen/view/components/terms_of_services/terms_of_services_widget.dart';

class WidgetsCenterCa extends StatelessWidget {
  final double height;
  const WidgetsCenterCa({Key? key, this.height = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      // color: Colors.amber,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FittedBox(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CreateAccountField(
                  height: constraints.maxHeight * 0.70,
                  width: constraints.maxWidth,
                ),
                SizedBox(
                  // color: Colors.red,
                  height: constraints.maxHeight * 0.15,
                  width: constraints.maxWidth,
                  // color: Colors.red,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Row(
                        children: [
                          TermsOfServicesWidget(
                            height: constraints.maxHeight * 0.45,
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
