import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/style.dart';

class SignButton extends StatelessWidget {
  final void Function()? onTap;
  final double height;
  const SignButton({
    Key? key,
    this.height = 75,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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