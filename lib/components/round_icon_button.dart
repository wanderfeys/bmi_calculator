import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, this.onPress});
  final IconData icon;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: Icon(
          icon,
          color: Color(0xFFfbfafa),
        ),
        onPressed: onPress,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          height: 56.0,
          width: 56.0,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF53b7f5),
      ),
    );
  }
}
