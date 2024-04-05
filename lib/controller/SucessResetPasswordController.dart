import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SucessResetPasswordController extends GetxController {
  CheckEmail();
  goToHome();
}

class SucessResetPasswordControllerImp extends SucessResetPasswordController {
  late TextEditingController email;
  @override
  CheckEmail() {}

  @override
  goToHome() {}

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
