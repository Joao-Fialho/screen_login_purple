import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:screen_login_purple/view/components/text_title.dart';

import 'box_widgets/widgets.bottom.dart';
import 'box_widgets/widgets_center.dart';

class ScreenLoginPage extends StatefulWidget {
  const ScreenLoginPage({Key? key}) : super(key: key);

  @override
  State<ScreenLoginPage> createState() => _ScreenLoginPageState();
}

class _ScreenLoginPageState extends State<ScreenLoginPage> {
  // @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      // resizeToAvoidBottomInset: false,
      // Colors.indigo[700],

      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: SizedBox(
                  height: size.height * 0.4,
                  width: size.width,
                  child: Image.asset(
                    'assets/images/Fundo.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.64,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(size.height * 0.06),
                      topRight: Radius.circular(size.height * 0.06),
                    ),
                    color: Colors.white,
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
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
                                  textTitle: 'Welcome back',
                                  height: constraints.maxHeight * 0.11,
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
            ],
          ),
        ),
      ),
    );
  }
}
