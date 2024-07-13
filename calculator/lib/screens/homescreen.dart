import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';
import 'package:math_expressions/math_expressions.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var userinput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SimpleCalculator(
          theme: const CalculatorThemeData(
            displayColor: Colors.black,
            displayStyle: const TextStyle(fontSize: 80, color: Colors.yellow),
            /*...*/
          ),
        ),
      )
    );
  }

  void equalpress() {
    String firstUserInput = userinput;
    firstUserInput = userinput.replaceAll('x', '*');
    String secondUserInput = firstUserInput;
    secondUserInput = firstUserInput.replaceAll('÷', '/');

    Parser p = Parser();
    Expression expression = p.parse(secondUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }

  void persenttage() {
    var ThirdUserInput = int.parse(userinput);
    var value = ThirdUserInput / 100;

    answer = value.toString();
  }
}