import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/text_title.dart';

import 'box_widgets_ca/widgets.bottom_ca.dart';
import 'box_widgets_ca/widgets_center_ca.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[400],

      // Colors.indigo[700],
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 1,
          width: size.width * 1,
          color: Colors.white,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: constraints.maxHeight * 0.8,
                  width: constraints.maxWidth * 0.8,
                  // color: Colors.grey.shade400,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // --> TITULO = 'Welcome back'
                          TextTitle(
                            textTitle: 'Get Started',
                            height: constraints.maxHeight * 0.08,
                          ),

                          // --> MEIO = Caixas de login, Remember e Forgot Password Button
                          WidgetsCenterCa(
                            height: constraints.maxHeight * 0.6,
                          ),
                          WidgetsBottomCa(
                            height: constraints.maxHeight * 0.17,
                            width: constraints.maxWidth,
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          )
                        ],
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
