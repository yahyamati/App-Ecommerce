import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class buttonlang extends StatelessWidget {
  final String textButt;
  final void Function()? onPressed;
  const buttonlang(
      {super.key, required this.textButt, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.scrollColor,
        textColor: Colors.white,
        child: Text(
          textButt,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
