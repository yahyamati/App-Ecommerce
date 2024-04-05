import 'package:flutter/material.dart';

class BodyAuth extends StatelessWidget {
  final String BodyTitle;
  const BodyAuth({super.key, required this.BodyTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        BodyTitle,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
