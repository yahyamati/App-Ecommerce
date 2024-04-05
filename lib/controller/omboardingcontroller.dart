import 'package:ecommerceapp/core/constant/Approutes.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:ecommerceapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class omboardingcontroller extends GetxController {
  //Myservices myservices = Get.find();
  next();
  onchanged(int value);
}

class omboardingcontrollerImp extends omboardingcontroller {
  late PageController pageController;

  int currentPage = 0;
  @override
  next() {
    currentPage++;

    if (currentPage > onboardinglist.length - 1) {
      Get.offAllNamed(Approutes.login); //يدينا لباجة login
      //myservices.sharedPreferences.setString("onboarding", "2");
    } else {
      pageController.animateToPage(currentPage,
          duration: Duration(milliseconds: 700), curve: Curves.easeInOut);
    }
  }

  @override
  onchanged(int value) {
    currentPage = value;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
