import 'package:calculadora_getx/bloc/calculator/calculator_bloc.dart';
import 'package:calculadora_getx/widgets/line_separator.dart';
import 'package:calculadora_getx/widgets/main_result.dart';
import 'package:calculadora_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MathResult extends StatelessWidget {
  const MathResult({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: '${state.firstNumber}'),
            SubResult(text: '${state.operation} '),
            SubResult(text: '${state.secondNumber}'),
            const LineSeparator(),
            MainResultText(text: '${state.mathResult}'),
          ],
        );
      },
    );
  }
}
