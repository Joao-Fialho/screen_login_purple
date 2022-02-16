import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screen_login_purple/view/style.dart';

class SignLink extends StatelessWidget {
  final double height;
  final double width;
  final String textLink;
  final String localRoute;

  const SignLink(
      {Key? key,
      this.height = 1,
      this.width = 0.0,
      this.textLink = 'Sign',
      this.localRoute = '/'})
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
              Navigator.pushReplacementNamed(context, localRoute);
            },
            child: Text(
              textLink,
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
