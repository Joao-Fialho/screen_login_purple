import 'package:flutter/material.dart';

class LoginController {
  static final LoginController _loginController = LoginController._internal();
  final formKey = GlobalKey<FormState>();

  factory LoginController() {
    return _loginController;
  }

  LoginController._internal();
}
