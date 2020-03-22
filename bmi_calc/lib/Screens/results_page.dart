import 'package:bmicalc/components/reusable_card.dart';
import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  final String resultText;
  final String resultBMI;
  final String interpretationBMI;

  ResultsPage({this.resultBMI, this.resultText, this.interpretationBMI});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Text(
            'Your Results',
            style: kTitleTextStyle,
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kResultsTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    resultBMI,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretationBMI,
                    style: kDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'RECALCULATE',
          )
        ],
      ),
    );
  }
}
