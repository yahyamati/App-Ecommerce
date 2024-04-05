import 'package:ecommerceapp/core/constant/imageasset.dart';
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppimagesAsset.logo,
      height: 100,
    );
  }
}
