part of 'calculator_bloc.dart';

@immutable
class CalculatorState {
  final String? mathResult;
  final String? firstNumber;
  final String? secontNumber;
  final String? operation;

  const CalculatorState(
      {this.mathResult = '30',
      this.firstNumber = '10',
      this.secontNumber = '20',
      this.operation = '+'});

// class CalculatorInitial extends CalculatorState {}
}
