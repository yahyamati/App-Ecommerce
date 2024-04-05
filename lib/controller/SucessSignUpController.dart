import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SucessSignUpController extends GetxController {
  goToSignIn();
  goToLogin();
}

class SucessSignUpControllerImp extends SucessSignUpController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController name;

  @override
  goToSignIn() {
    Get.offNamed(Approutes.signIn);
  }

  @override
  goToLogin() {
    Get.offAllNamed(Approutes.login);
  }

  @override
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    name = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    name.dispose();
    super.dispose();
  }
}
