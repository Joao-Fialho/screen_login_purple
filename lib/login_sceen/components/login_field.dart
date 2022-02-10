import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class LoginField extends StatelessWidget {
  final double height;
  final double width;
  const LoginField({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return FittedBox(
            child: Builder(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormFieldApp(
                    height: constraints.maxHeight * 0.5,
                    width: constraints.maxWidth * 1,
                    textApp: 'E-mail',
                    sizeTop: constraints.maxHeight * 0.9,
                    fontSize: constraints.maxHeight * 0.2,
                  ),
                  TextFormFieldApp(
                    height: constraints.maxHeight * 0.5,
                    width: constraints.maxWidth * 1,
                    textApp: 'Password',
                    sizeTop: constraints.maxHeight * 0.9,
                    fontSize: constraints.maxHeight * 0.2,
                  ),
                ],
              );
            }),
          );
        },
      ),
    );
  }
}
