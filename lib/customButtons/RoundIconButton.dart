import 'package:flutter/material.dart';


class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final Function()? onPressd;
  RoundIconButton({@required this.icon, @required this.onPressd});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressd,
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}