import 'package:ecommerceapp/controller/omboardingcontroller.dart';

import 'package:ecommerceapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class slideromboarding extends GetView<omboardingcontrollerImp> {
  const slideromboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController, //Page controller
      onPageChanged: (value) {
        //فونكسيو واجدة بش تحسبنارقم داما باجا رانا
        controller.onchanged(value);
      },
      itemCount: onboardinglist.length,
      itemBuilder: (context, i) => Column(
        children: [
          //const SizedBox(height: 20),

          //margin
          Image.asset(
            onboardinglist[i].image!,
            width: 350,
            height: 370,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 40), //margin
          Text(onboardinglist[i].title!,
              style: Theme.of(context).textTheme.headline1),

          const SizedBox(height: 10), //margin

          Container(
              width: double.infinity, //العرض كامل
              alignment: Alignment.center,
              child: Text(onboardinglist[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1))
        ],
      ),
    );
  }
}
