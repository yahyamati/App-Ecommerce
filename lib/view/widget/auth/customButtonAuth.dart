import 'package:ecommerceapp/core/constant/color.dart';
import 'package:flutter/material.dart';

class ButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const ButtonAuth({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: MaterialButton(
        color: AppColor.scrollColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(text),
        padding: const EdgeInsets.symmetric(vertical: 11),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
