import 'package:calculadora_getx/controllers/calculador_controller.dart';
import 'package:calculadora_getx/widgets/line_separator.dart';
import 'package:calculadora_getx/widgets/main_result.dart';
import 'package:calculadora_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MathResult extends StatelessWidget {
  MathResult({super.key});
  final calculadorCtrl = Get.find<CalculadorController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            SubResult(text: '${calculadorCtrl.firstNumber}'),
            SubResult(text: '${calculadorCtrl.operation} '),
            SubResult(text: '${calculadorCtrl.secondNumber}'),
            const LineSeparator(),
            MainResultText(text: '${calculadorCtrl.mathResult}'),
          ],
        ));
  }
}
