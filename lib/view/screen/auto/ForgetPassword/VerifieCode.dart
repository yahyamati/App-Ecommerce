import 'package:ecommerceapp/controller/VerifieCodeCotroller.dart';
import 'package:ecommerceapp/core/constant/color.dart';

import 'package:ecommerceapp/view/widget/auth/LogoAuth.dart';
import 'package:ecommerceapp/view/widget/auth/customBodyaut.dart';

import 'package:ecommerceapp/view/widget/auth/customTitleaut.dart';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifieCode extends StatelessWidget {
  const VerifieCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifieCodeControllerImp controller = Get.put(VerifieCodeControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroud,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColor.backgroud,
        title: Text("Verifie Code",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: ListView(
          children: [
            LogoAuth(),
            const SizedBox(height: 20),
            const TitleAuth(
              title: "Check Code",
            ),
            const SizedBox(height: 15),
            const BodyAuth(
              BodyTitle:
                  "Please Enter Your Email Adresse Code ,yahyamati8@gmail.com ",
            ),
            SizedBox(height: 20),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(15),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToResetPassword();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
