import 'package:ecommerceapp/controller/omboardingcontroller.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/omboarding/custombutton.dart';
import 'package:ecommerceapp/view/widget/omboarding/dotcontroller.dart';
import 'package:ecommerceapp/view/widget/omboarding/slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(omboardingcontrollerImp()); //الحقن
    return const Scaffold(
        backgroundColor: AppColor.backgroud,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(flex: 3, child: slideromboarding()),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    dotcontrolleromboarding(),
                    Spacer(flex: 2),
                    omboardingbutton()
                  ],
                ))
          ],
        )));
  }
}
