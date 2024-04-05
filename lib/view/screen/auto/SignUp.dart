import 'package:ecommerceapp/controller/SignUpController.dart';

import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:ecommerceapp/core/functions/testauth.dart';

import 'package:ecommerceapp/view/widget/auth/customBodyaut.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextSignUpOrSignIn.dart';
import 'package:ecommerceapp/view/widget/auth/customTitleaut.dart';
import 'package:ecommerceapp/view/widget/auth/custumTextaut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());

    return Scaffold(
        backgroundColor: AppColor.backgroud,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: AppColor.backgroud,
          title: Text("Sign Up",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: AppColor.grey)),
        ),
        body: PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) {
            if (didPop) {
              return;
            }
            alertexitapp(); //asq thab tquiter app wla nn
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Form(
              key: controller.formstate,
              child: ListView(
                children: [
                  //LogoAuth(),
                  const SizedBox(height: 20),
                  const TitleAuth(
                    title: "Welcom Back",
                  ),
                  const SizedBox(height: 15),
                  const BodyAuth(
                    BodyTitle:
                        '"Sign Up With Your Email And Password  OR Continue with Social Media"',
                  ),
                  const SizedBox(height: 23),
                  textaut(
                    valid: (val) {
                      return validation(val!, 5, 100, "username");
                    },
                    hintText: 'Enter Your Name',
                    labelText: 'User name',
                    iconData: Icons.person,
                    mycontroller: controller.name,
                  ),
                  const SizedBox(height: 30),
                  textaut(
                    valid: (val) {
                      return validation(val!, 5, 100, "email");
                    },
                    hintText: 'Enter Your Email',
                    labelText: 'Email',
                    iconData: Icons.email_outlined,
                    mycontroller: controller.email,
                  ),
                  const SizedBox(height: 30),
                  textaut(
                    valid: (val) {
                      return validation(val!, 10, 10, "phone");
                    },
                    hintText: 'Enter Your Phone',
                    labelText: 'Phone',
                    iconData: Icons.phone_android_outlined,
                    mycontroller: controller.phone,
                  ),
                  const SizedBox(height: 30),
                  textaut(
                    valid: (val) {
                      return validation(val!, 5, 15, "password");
                    },
                    hintText: 'Enter Your Password',
                    labelText: 'Password',
                    iconData: Icons.lock_outlined,
                    mycontroller: controller.password,
                  ),
                  const SizedBox(height: 20),

                  ButtonAuth(
                    text: 'Sign Up',
                    onPressed: () {
                      controller.login();

                      //controller.goToCheckEmail();
                    },
                  ),
                  const SizedBox(height: 30),
                  TextSignUpOrSignIn(
                      textone: 'Have an account?',
                      texttwo: 'Sign In',
                      onTap: () {
                        controller.goToSignIn();
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
