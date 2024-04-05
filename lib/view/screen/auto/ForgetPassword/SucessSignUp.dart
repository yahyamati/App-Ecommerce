import 'package:ecommerceapp/controller/SucessSignUpController.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/view/widget/language/customButtonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessSignUp extends StatelessWidget {
  const SucessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SucessSignUpControllerImp controller = Get.put(SucessSignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroud,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroud,
        title: Text("Sucess Sign Up",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Color.fromARGB(255, 219, 115, 153),
              ),
            ),
            buttonlang(
              textButt: "OK",
              onPressed: () {
                controller.goToLogin();
              },
            )
          ],
        ),
      ),
    );
  }
}
