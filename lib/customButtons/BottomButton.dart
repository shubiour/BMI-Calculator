import 'package:flutter/material.dart';
import '../assets/constants.dart';
class BottomButton extends StatelessWidget {
  final Function()? onTap;
  final String? buttonTitle;
  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonTitle!,
              style: kCalculateTextStyle,
              //textAlign: TextAlign.center,
            ),
          ],
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomCOntainerheight,
      ),
    );
  }
}