import 'package:ecommerceapp/controller/ResetPasswordController.dart';

import 'package:ecommerceapp/core/constant/color.dart';
import 'package:ecommerceapp/core/functions/testauth.dart';
import 'package:ecommerceapp/view/widget/auth/LogoAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customBodyaut.dart';
import 'package:ecommerceapp/view/widget/auth/customButtonAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customTitleaut.dart';
import 'package:ecommerceapp/view/widget/auth/custumTextaut.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroud,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroud,
        title: Text("Reset Password",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Form(
        key: controller.formstate,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: ListView(
            children: [
              LogoAuth(),
              const SizedBox(height: 20),
              const TitleAuth(
                title: "New Password",
              ),
              const SizedBox(height: 15),
              const BodyAuth(
                BodyTitle: "Please Enter A New Password and Confirme It",
              ),
              const SizedBox(height: 23),
              textaut(
                valid: (val) {
                  return validation(val!, 5, 15, "password");
                },
                hintText: 'Enter New Password',
                labelText: 'New Password',
                iconData: Icons.lock_outlined,
                mycontroller: null,
              ),
              const SizedBox(height: 20),
              textaut(
                valid: (val) {
                  return validation(val!, 5, 15, "password");
                },
                hintText: 'Confirme Password',
                labelText: 'Confirme Password',
                iconData: Icons.lock_outlined,
                mycontroller: null,
              ),
              const SizedBox(height: 20),
              ButtonAuth(
                text: 'Save',
                onPressed: () {
                  controller.CheckEmail();
                  //controller.goToSecessResetPassword();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
