import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/calculate_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.message,
      @required this.bmiResult,
      @required this.resultText});

  String? bmiResult;
  String? resultText;
  String? message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Your Result',
            style: kTitleTextStyle,
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText!,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    message!,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(
            label: 'RE-CALCULATE BMI',
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
