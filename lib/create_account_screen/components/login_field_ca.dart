// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:screen_login_purple/create_account_screen/style_ca.dart';

class LoginFieldCa extends StatelessWidget {
  final double height;
  final double width;
  const LoginFieldCa({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return LayoutBuilder(builder: (context, constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormFieldAppCa(
                  height: constraints.maxHeight * 0.33,
                  width: constraints.maxWidth * 1,
                  textApp: 'Name',
                  sizeTop: constraints.maxHeight * 0.3,
                  fontSize: constraints.maxHeight * 0.13,
                ),
                TextFormFieldAppCa(
                  height: constraints.maxHeight * 0.33,
                  width: constraints.maxWidth * 1,
                  textApp: 'E-mail',
                  sizeTop: constraints.maxHeight * 0.3,
                  fontSize: constraints.maxHeight * 0.13,
                ),
                TextFormFieldAppCa(
                  height: constraints.maxHeight * 0.33,
                  width: constraints.maxWidth * 1,
                  textApp: 'Password',
                  sizeTop: constraints.maxHeight * 0.3,
                  fontSize: constraints.maxHeight * 0.13,
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
