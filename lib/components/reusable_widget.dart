import 'package:flutter/material.dart';
import '../constant/constants.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.cardIcon, @required this.cardText});
  final IconData cardIcon;
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          cardIcon,
          size: 80.0,
          color: kIconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
