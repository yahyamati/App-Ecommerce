import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:get/get.dart';

abstract class VerifieCodeController extends GetxController {
  checkecode();
  goToResetPassword();
}

class VerifieCodeControllerImp extends VerifieCodeController {
  late String verifiecode;

  @override
  checkecode() {}

  @override
  goToResetPassword() {
    Get.offNamed(Approutes.resetpassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
