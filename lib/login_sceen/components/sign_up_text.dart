import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/create_account_page.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class SignUpText extends StatelessWidget {
  final double height;
  final double width;
  const SignUpText({Key? key, this.height = 1, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        alignment: Alignment.bottomLeft,
        // color: Colors.blue,
        height: height,
        width: width,
        child: LayoutBuilder(builder: (context, constraints) {
          return GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/createAccount');
            },
            child: Text(
              'Sing Up',
              style: TextStyle(
                color: cPrimaryColor,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: constraints.maxHeight * 0.42,
              ),
            ),
          );
        }),
      ),
    );
  }
}
