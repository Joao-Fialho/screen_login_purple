import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/text_form_field_app.dart';
import 'package:screen_login_purple/view/login_sceen/controller/login_controller.dart';

class LoginField extends StatelessWidget {
  final controller = LoginController();
  final double height;
  final double width;
  LoginField({Key? key, this.height = 0.0, this.width = 0.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return LayoutBuilder(builder: (context, constraints) {
            return FittedBox(
              child: Form(
                key: controller.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormFieldApp(
                      height: constraints.maxHeight * 0.5,
                      width: constraints.maxWidth * 1,
                      textApp: 'E-mail',
                      fontSize: constraints.maxHeight * 0.13,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'E-mail é obrigatorio ';
                        } else if (!value.contains('@')) {
                          return 'E-mail tem que ter @';
                        } else if (!value.contains(RegExp(r'[a-z]'))) {
                          return 'E-mail tem que ter letras';
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormFieldApp(
                      height: constraints.maxHeight * 0.5,
                      width: constraints.maxWidth * 1,
                      textApp: 'Password',
                      fontSize: constraints.maxHeight * 0.13,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Password é obrigatorio ';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
