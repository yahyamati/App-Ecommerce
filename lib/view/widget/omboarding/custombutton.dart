import 'package:ecommerceapp/controller/omboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';

class omboardingbutton extends GetView<omboardingcontrollerImp> {
  const omboardingbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 30),
        height: 40,
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
          onPressed: () {
            controller.next();
          },
          color: AppColor.scrollColor,
          child: const Text(
            "Continue",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
