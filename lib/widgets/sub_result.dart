import 'package:flutter/material.dart';

class SubResult extends StatelessWidget {
  const SubResult({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        child: Text(text, style: const TextStyle(fontSize: 30)));
  }
}
