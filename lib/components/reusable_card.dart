import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardColor, this.cardChild, this.onTapIcon});
  final Color cardColor;
  final Widget cardChild;
  final Function onTapIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapIcon,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
