import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  CheckEmail();
  goToSecessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController email;
  @override
  CheckEmail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
      goToSecessResetPassword();
    } else {
      print("not valid");
    }
  }

  @override
  goToSecessResetPassword() {
    Get.offNamed(Approutes.secessresetpassword);
  }

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
