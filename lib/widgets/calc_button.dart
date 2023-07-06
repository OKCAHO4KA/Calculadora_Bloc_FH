import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton(
      {super.key,
      bgColor,
      this.big = false,
      required this.text,
      required this.onPressed})
      : bgColor = bgColor ?? const Color(0xff333333);

  final Color? bgColor;
  final bool? big;
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10, right: 5, left: 5),
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: bgColor,
              shape: const StadiumBorder(),
              foregroundColor: Colors.white),
          onPressed: () => onPressed(),
          child: SizedBox(
            width: big! ? 150 : 65,
            height: 65,
            child: Center(
              child: Text(text,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w300)),
            ),
          )),
    );
  }
}
