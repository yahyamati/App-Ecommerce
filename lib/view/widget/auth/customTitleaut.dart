import 'package:flutter/material.dart';

class TitleAuth extends StatelessWidget {
  final String title;
  const TitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline2,
      textAlign: TextAlign.center,
    );
  }
}
