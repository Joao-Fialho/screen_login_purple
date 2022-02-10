import 'package:flutter/material.dart';
import 'package:screen_login_purple/login_sceen/style.dart';

class SignUpButtonCa extends StatelessWidget {
  final double height;
  const SignUpButtonCa({
    Key? key,
    this.height = 75,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, '/welcome');
      },
      child: Container(
        height: height,
        width: height,
        decoration: BoxDecoration(color: cPrimaryColor, shape: BoxShape.circle),
        child: LayoutBuilder(builder: (context, constraints) {
          return Icon(
            Icons.arrow_forward_rounded,
            size: constraints.maxHeight * 0.4,
            color: Colors.white,
          );
        }),
      ),
    );
  }
}

//validacoes nos campos e mascara
//forms