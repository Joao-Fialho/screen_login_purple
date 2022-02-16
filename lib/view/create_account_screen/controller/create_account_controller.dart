import 'package:flutter/material.dart';

class CreatAccountController {
  static final CreatAccountController _creatAccountController =
      CreatAccountController._internal();
  final formKey = GlobalKey<FormState>();

  factory CreatAccountController() {
    return _creatAccountController;
  }

  CreatAccountController._internal();

  bool isChecked = false;
}
