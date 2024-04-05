import 'package:flutter/material.dart';

class textaut extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final String? Function(String?) valid;
  final TextEditingController? mycontroller;
  final bool? obscureText;
  final void Function()? onTapIcon;
  const textaut(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.mycontroller,
      required this.valid,
      this.obscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      obscureText: obscureText == null || obscureText == false ? false : true,
      controller: mycontroller,
      decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(labelText)),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 13),
          suffixIcon: InkWell(
            child: Icon(iconData),
            onTap: onTapIcon,
          ),
          border: OutlineInputBorder(
              //borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(25))),
    );
  }
}
