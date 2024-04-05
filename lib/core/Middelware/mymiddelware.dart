import 'package:ecommerceapp/core/constant/Approutes.dart';
import 'package:ecommerceapp/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mymiddelware extends GetMiddleware {
  Myservices myservices = Get.find();
  @override
  int? priority = 0;

  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("onboarding") != "2") {
      return const RouteSettings(name: Approutes.login);
    }
  }
}
