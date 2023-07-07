import 'package:calculadora_getx/bloc/calculator/calculator_bloc.dart';
import 'package:calculadora_getx/widgets/main_result.dart';
import 'package:calculadora_getx/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'line_separator.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state.firstNumber == '0' && state.secondNumber == '0') {
          return MainResultText(
              text: state.mathResult!.endsWith('.0')
                  ? state.mathResult!.substring(0, state.mathResult!.length - 2)
                  : state.mathResult!);
        }
        return Column(
          children: [
            SubResult(text: state.firstNumber!),
            SubResult(text: state.operation!),
            SubResult(text: state.secondNumber!),
            const LineSeparator(),
            MainResultText(
                text: state.mathResult!.endsWith('.0')
                    ? state.mathResult!
                        .substring(0, state.mathResult!.length - 2)
                    : state.mathResult!),
          ],
        );
      },
    );
  }
}
