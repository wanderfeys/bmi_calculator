import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:flutter/material.dart';
import '../constant/constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmi_result,
      @required this.resultText,
      @required this.motivation});
  final String bmi_result;
  final String resultText;
  final String motivation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" BMI CALCULATE"),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Your result is',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableCard(
              cardColor: kInactiveCardColor,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    SizedBox(
                      height: 55.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          bmi_result,
                          style: kResultBodyStyle,
                        ),
                      ],
                    ),
                    Text(
                      motivation,
                      style: kCardTextStyle,
                      textAlign: TextAlign.center,
                    )
                  ]),
            ),
          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ]));
  }
}
