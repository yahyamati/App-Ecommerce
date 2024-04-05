import 'package:ecommerceapp/controller/ForgetPasswordContoller.dart';

import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/testauth.dart';
import 'package:ecommerceapp/view/widget/auth/LogoAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customBodyaut.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTitleaut.dart';
import 'package:ecommerceapp/view/widget/auth/custumTextaut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroud,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroud,
        title: Text("Forget Password",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              LogoAuth(),
              const SizedBox(height: 20),
              const TitleAuth(
                title: "Check It",
              ),
              const SizedBox(height: 15),
              const BodyAuth(
                BodyTitle:
                    "Please Enter Your Email Adresse to Recive A Verification Email",
              ),
              const SizedBox(height: 23),
              textaut(
                valid: (val) {
                  return validation(val!, 5, 100, "email");
                },
                hintText: 'Enter Your Email',
                labelText: 'Email',
                iconData: Icons.email_outlined,
                mycontroller: controller.email,
              ),
              const SizedBox(height: 20),
              ButtonAuth(
                text: 'Check In',
                onPressed: () {
                  controller.checkemail();
                  //controller.goToVerifieCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
