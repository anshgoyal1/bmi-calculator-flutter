import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../components/reusable_card.dart';



class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretator;

  ResultsPage(
      {@required this.bmi,
      @required this.result,
      @required this.interpretator});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Results',
            style: kTitleTextStyle,
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColour,
              cardChild: Column(
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmi,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretator,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonText: 'Calculate Again',
          )
        ],
      ),
    );
  }
}
