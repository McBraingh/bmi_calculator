import 'package:bmicalculator/input_page.dart';
import 'package:bmicalculator/reusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constance.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiString, @required this.interpretation, @required this.resultText});

  final String bmiString;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: titleBon,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: resultStyle,
                  ),
                  Text(
                    bmiString,
                    style: bmitextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: interpretationStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'Re-Calculate',
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
