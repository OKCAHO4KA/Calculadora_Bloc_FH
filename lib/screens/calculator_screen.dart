import 'package:calculadora_getx/controllers/calculador_controller.dart';
import 'package:calculadora_getx/widgets/calc_button.dart';
import 'package:calculadora_getx/widgets/math_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorScreen extends StatelessWidget {
  final calculadorCtrl = Get.put(CalculadorController());

  CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(child: Container()),
              MathResult(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculadorCtrl.resetAll(),
                  ),
                  CalculatorButton(
                    text: '+/-',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculadorCtrl.changeNegativePosivite(),
                  ),
                  CalculatorButton(
                    text: 'del',
                    bgColor: const Color(0xffA5A5A5),
                    onPressed: () => calculadorCtrl.deleteLast(),
                  ),
                  CalculatorButton(
                    text: '/',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculadorCtrl.selectOperation('/'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    onPressed: () => calculadorCtrl.addNumber('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    onPressed: () => calculadorCtrl.addNumber('8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    onPressed: () => calculadorCtrl.addNumber('9'),
                  ),
                  CalculatorButton(
                    text: 'X',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculadorCtrl.selectOperation('X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '4',
                    onPressed: () => calculadorCtrl.addNumber('4'),
                  ),
                  CalculatorButton(
                    text: '5',
                    onPressed: () => calculadorCtrl.addNumber('5'),
                  ),
                  CalculatorButton(
                    text: '6',
                    onPressed: () => calculadorCtrl.addNumber('6'),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculadorCtrl.selectOperation('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    onPressed: () => calculadorCtrl.addNumber('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    onPressed: () => calculadorCtrl.addNumber('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    onPressed: () => calculadorCtrl.addNumber('3'),
                  ),
                  CalculatorButton(
                    text: '+',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculadorCtrl.selectOperation('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    big: true,
                    text: '0',
                    onPressed: () => calculadorCtrl.addNumber('0'),
                  ),
                  CalculatorButton(
                    text: '.',
                    onPressed: () => calculadorCtrl.addDecimalPoint(),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: const Color(0xffF0A23B),
                    onPressed: () => calculadorCtrl.calculateResult(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
