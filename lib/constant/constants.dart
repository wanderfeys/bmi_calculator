import 'dart:math';

import 'package:flutter/material.dart';

const kActiveCardColor = Color(0xFF82c8c4);
enum GenderType { male, female }
const kInactiveCardColor = Color(0xFF30a4a4);
const kBottomBarColor = Color(0xFF8a53f5);
const kTextColor = Color(0xFFFFFFFF);
const kIconColor = Color(0xFF642cc2);
double kBottomHeight = 80.0;
int kHeight = 180;
int kAge = 18;
int kWeight = 60;
double kResult;
double calculator() {
  double kSqurt = sqrt(kHeight);

  double kResult = kSqurt / kWeight;
  return kResult;
}

const kCardTextStyle = TextStyle(
  color: kTextColor,
  fontSize: 30.0,
  fontFamily: 'Kalam-Regular',
);

const kWidgetTextStyle = TextStyle(
  color: kIconColor,
  fontSize: 45.0,
  fontWeight: FontWeight.w900,
);
const kResultTextStyle = TextStyle(
    color: Color(0xFF2aef84), fontSize: 50, fontWeight: FontWeight.bold);
const kTitleTextStyle = TextStyle(
    color: Color(0xFF30a4a4), fontSize: 65.0, fontWeight: FontWeight.bold);
const kResultBodyStyle = TextStyle(
  color: kIconColor,
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
