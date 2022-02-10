import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/box_widgets_ca/widgets.bottom_ca.dart';
import 'package:screen_login_purple/create_account_screen/box_widgets_ca/widgets_center_ca.dart';
import 'package:screen_login_purple/create_account_screen/components/text_title_ca.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],

      // Colors.indigo[700],
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.64,
          width: size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(size.height * 0.06)),
            color: Colors.white,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                height: constraints.maxHeight * 0.76,
                width: constraints.maxWidth * 0.8,
                // color: Colors.grey.shade400,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // --> TITULO = 'Welcome back'
                        TextTitleCa(
                          height: constraints.maxHeight * 0.1,
                        ),

                        // --> MEIO = Caixas de login, Remember e Forgot Password Button
                        WidgetsCenterCa(
                          height: constraints.maxHeight * 0.55,
                        ),
                        WidgetsBottomCa(
                          height: constraints.maxHeight * 0.27,
                          width: constraints.maxWidth,
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
