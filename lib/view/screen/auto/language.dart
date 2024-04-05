import 'package:ecommerceapp/core/constant/Approutes.dart';

import 'package:ecommerceapp/core/localization/changelangue.dart';
import 'package:ecommerceapp/view/widget/auth/LogoAuth.dart';
import 'package:ecommerceapp/view/widget/language/customButtonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class langue extends GetView<LocaleController> {
  const langue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcom To Yahia App:",
                  style: Theme.of(context).textTheme.headline3),
              const SizedBox(height: 20),
              const LogoAuth(),
              const SizedBox(height: 15),
              Text(
                "1".tr,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 15,
              ),
              buttonlang(
                  textButt: "AR",
                  onPressed: () {
                    controller.ChangeLang("ar");
                    Get.toNamed(Approutes.onboarding);
                  }),
              buttonlang(
                  textButt: "EN",
                  onPressed: () {
                    controller.ChangeLang("en");
                    Get.toNamed(Approutes.onboarding);
                  }),
            ],
          )),
    );
  }
}
