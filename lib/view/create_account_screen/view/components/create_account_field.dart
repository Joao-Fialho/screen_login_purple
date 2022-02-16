// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:screen_login_purple/view/components/text_form_field_app.dart';
import 'package:screen_login_purple/view/create_account_screen/controller/create_account_controller.dart';
import 'package:screen_login_purple/view/create_account_screen/model/cpf_validate.dart';

class CreateAccountField extends StatelessWidget {
  final controller = CreatAccountController();

  final double height;
  final double width;
  CreateAccountField({Key? key, this.height = 0.0, this.width = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.blue,
      height: height,
      width: width,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormFieldApp(
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 1,
                  textApp: 'Name',
                  fontSize: constraints.maxHeight * 0.07,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nome não pode estar vazio ';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormFieldApp(
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 1,
                  textApp: 'E-mail',
                  fontSize: constraints.maxHeight * 0.07,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'E-mail não pode estar vazio';
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
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 1,
                  textApp: 'Password',
                  fontSize: constraints.maxHeight * 0.07,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Senha não pode estar vazia ';
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormFieldApp(
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 1,
                  textApp: 'CPF',
                  fontSize: constraints.maxHeight * 0.07,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'CPF não pode estar vazio ';
                    } else if (value.length < 14) {
                      return 'CPF Incompleto';
                    } else if (!CPFValidate(value.replaceAll(RegExp(r'\D'), ''))
                        .isValid()) {
                      return 'CPF Invalido';
                    } else {
                      return null;
                    }
                  },
                  inputFormatters: [CPFMask()],
                ),
                TextFormFieldApp(
                  height: constraints.maxHeight * 0.18,
                  width: constraints.maxWidth * 1,
                  textApp: 'Telefone',
                  fontSize: constraints.maxHeight * 0.07,
                  inputFormatters: [PhoneMask()],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Telefone não pode estar vazio ';
                    } else if (value.length < 16) {
                      return 'Telefone Incompleto';
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
