import 'package:ecommerceapp/controller/omboardingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class dotcontrolleromboarding extends StatelessWidget {
  const dotcontrolleromboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<omboardingcontrollerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onboardinglist.length,
                    (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5, top: 20),
                        duration: const Duration(milliseconds: 800),
                        width: controller.currentPage == index ? 20 : 5,
                        //اظا كان يساوي رقم لاباج ديرلي العرض 20ولا خليها 5
                        height: 6,
                        decoration:
                            const BoxDecoration(color: AppColor.scrollColor)))
              ],
            ));
  }
}
