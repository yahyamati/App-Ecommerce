import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  checkemail();
  goToVerifieCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkemail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("valid");
      goToVerifieCode();
    } else {}
    print("not valid");
  }

  @override
  goToVerifieCode() {
    Get.offAllNamed(Approutes.verifiecode);
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
