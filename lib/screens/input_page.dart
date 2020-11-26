import 'package:bmi_calculator/components/calculation_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/reusable_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/constants.dart';
import '../components/round_icon_button.dart';
import 'result_page.dart';
import '../components/buttom_button.dart';
import '../components/calculation_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fitness calculator',
            style: TextStyle(fontFamily: 'Kalam-Regular'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onTapIcon: () {
                    setState(() {
                      selectedGender = GenderType.male;
                    });
                  },
                  cardColor: selectedGender == GenderType.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: ReusableWidget(
                    cardIcon: FontAwesomeIcons.mars,
                    cardText: "Male",
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onTapIcon: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  cardColor: selectedGender == GenderType.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: ReusableWidget(
                    cardIcon: FontAwesomeIcons.venus,
                    cardText: "Female",
                  ),
                )),
              ]),
            ),
            Expanded(
              child: ReusableCard(
                cardColor: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: kCardTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          kHeight.toString(),
                          style: kWidgetTextStyle,
                        ),
                        Text(
                          "cm",
                          style: kCardTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Color(0xFF8261dc),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          thumbColor: Color(0xFF8a53f5),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0),
                          overlayColor: Color(0x298a53f5)),
                      child: Slider(
                        value: kHeight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        inactiveColor: Color(0xFF53b7f5),
                        onChanged: (double newHeight) {
                          setState(() {
                            kHeight = newHeight.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      cardColor: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "WEIGHT",
                            style: kCardTextStyle,
                          ),
                          Text(
                            kWeight.toString(),
                            style: kWidgetTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    kWeight++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    kWeight--;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Age",
                            style: kCardTextStyle,
                          ),
                          Text(
                            kAge.toString(),
                            style: kWidgetTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    kAge++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    kAge--;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
                buttonTitle: "CALCULATE",
                onTap: () {
                  CalculateBMI calc =
                      new CalculateBMI(height: kHeight, weight: kWeight);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmi_result: calc.calculateBMI(),
                                resultText: calc.goResult(),
                                motivation: calc.goInterpretetion(),
                              )));
                })
          ],
        ));
  }
}
