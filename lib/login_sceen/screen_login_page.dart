import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/box_widgets/widgets.bottom.dart';
import 'package:screen_login_purple/login_sceen/box_widgets/widgets_center.dart';
import 'components/text_title.dart';
import 'style.dart';

class ScreenLoginPage extends StatelessWidget {
  const ScreenLoginPage({Key? key}) : super(key: key);

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
                        TextTitle(
                          height: constraints.maxHeight * 0.1,
                        ),

                        // --> MEIO = Caixas de login, Remember e Forgot Password Button
                        WidgetsCenter(
                          height: constraints.maxHeight * 0.45,
                        ),
                        WidgetsBottom(
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
