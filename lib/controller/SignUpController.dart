import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  login();
  goToSignIn();
  goToCheckEmail();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController name;

  @override
  goToSignIn() {
    Get.offNamed(Approutes.signIn);
  }

  @override
  login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
    } else {
      print("not valid");
    }
  }

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

  @override
  goToCheckEmail() {
    Get.offNamed(Approutes.checkemail);
  }
}
