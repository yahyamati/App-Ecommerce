import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class SucessResetPasword extends StatelessWidget {
  const SucessResetPasword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroud,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          "yahya",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
