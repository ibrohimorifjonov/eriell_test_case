
import 'package:flutter/material.dart';

mixin LoginMixin {
  late TextEditingController loginTextController;
  late TextEditingController passwordTextController;

  void initControllers() {
    loginTextController = TextEditingController();
    passwordTextController = TextEditingController();
  }

  void disposeControllers() {
    loginTextController.dispose();
    passwordTextController.dispose();
  }
}
