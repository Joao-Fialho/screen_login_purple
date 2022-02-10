import 'package:flutter/material.dart';

import '../style_ca.dart';

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
          return FittedBox(
            child: Builder(builder: (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormFieldAppCa(
                    height: constraints.maxHeight * 0.33,
                    width: constraints.maxWidth * 1,
                    textApp: 'Name',
                    sizeTop: constraints.maxHeight * 0.2,
                    fontSize: constraints.maxHeight * 0.2,
                  ),
                  TextFormFieldAppCa(
                    height: constraints.maxHeight * 0.33,
                    width: constraints.maxWidth * 1,
                    textApp: 'E-mail',
                    sizeTop: constraints.maxHeight * 0.2,
                    fontSize: constraints.maxHeight * 0.2,
                  ),
                  TextFormFieldAppCa(
                    height: constraints.maxHeight * 0.33,
                    width: constraints.maxWidth * 1,
                    textApp: 'Password',
                    sizeTop: constraints.maxHeight * 0.2,
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
