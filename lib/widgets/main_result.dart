import 'package:flutter/material.dart';

class MainResultText extends StatelessWidget {
  const MainResultText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: const TextStyle(fontSize: 50),
        ));
  }
}
