import 'package:ecommerceapp/controller/LoginController.dart';
import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/alertexitapp.dart';
import 'package:ecommerceapp/core/functions/testauth.dart';
import 'package:ecommerceapp/view/widget/auth/LogoAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customBodyaut.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTextSignUpOrSignIn.dart';
import 'package:ecommerceapp/view/widget/auth/customTitleaut.dart';
import 'package:ecommerceapp/view/widget/auth/custumTextaut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    logincontrollerImp controller = Get.put(logincontrollerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroud,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: AppColor.backgroud,
          title: Text("3".tr,
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
                  LogoAuth(),
                  const SizedBox(height: 20),
                  const TitleAuth(
                    title: "Welcom Back",
                  ),
                  const SizedBox(height: 15),
                  const BodyAuth(
                    BodyTitle:
                        '"Sign In With Your Email And Password OR Continue with Social Media"',
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
                  const SizedBox(height: 30),
                  GetBuilder<logincontrollerImp>(builder: (controller) {
                    return textaut(
                      obscureText: controller.isshowpassword, //password hide
                      onTapIcon: () {
                        controller.Showpassword();
                      },
                      valid: (val) {
                        return validation(val!, 5, 30, "password"); //error
                      },
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      iconData: Icons.lock_outlined,
                      mycontroller: controller.password,
                    );
                  }),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: const Text(
                      "Forget Password?",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  ButtonAuth(
                    text: 'Sign In',
                    onPressed: () {
                      controller.login();
                    },
                  ),
                  const SizedBox(height: 30),
                  TextSignUpOrSignIn(
                    textone: "Don't have an account",
                    texttwo: "Sign UP",
                    onTap: () {
                      controller.goToSignUp();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
