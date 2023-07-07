import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(const CalculatorState()) {
    on<CalculatorEvent>((event, emit) {
      if (event is ResetAC) {
        emit(const CalculatorState(
            firstNumber: '0',
            secondNumber: '0',
            mathResult: '0',
            operation: '+'));
      } else if (event is AddNumber) {
        emit(state.copiWith(
            mathResult: (state.mathResult == '0')
                ? event.number
                : state.mathResult! + event.number));
      } else if (event is ChangeNegativePositive) {
        emit(state.copiWith(
            mathResult: (state.mathResult!.contains('-'))
                ? state.mathResult!.replaceFirst('-', '')
                : '-${state.mathResult!}'));
      } else if (event is DeleteLast) {
        emit(state.copiWith(
            mathResult: (state.mathResult!.length > 1)
                ? state.mathResult!.substring(0, state.mathResult!.length - 1)
                : '0'));
      } else if (event is OperationEntry) {
        emit(state.copiWith(
            firstNumber: state.mathResult,
            mathResult: '0',
            operation: event.operation,
            secondNumber: '0'));
      } else if (event is CalculateResult) {
        final double num1 = double.parse(state.firstNumber!);
        final double num2 = double.parse(state.mathResult!);

        switch (state.operation) {
          case '/':
            emit(state.copiWith(
                secondNumber: state.mathResult,
                mathResult: (num1 / num2).toString()));
            break;
          case 'X':
            emit(state.copiWith(
                secondNumber: state.mathResult,
                mathResult: (num1 * num2).toString()));
            break;
          case '+':
            emit(state.copiWith(
                secondNumber: state.mathResult,
                mathResult: (num1 + num2).toString()));
            break;
          case '-':
            emit(state.copiWith(
                secondNumber: state.mathResult,
                mathResult: (num1 - num2).toString()));
            break;
          default:
            emit(state);
        }
      }
    });
  }
}
