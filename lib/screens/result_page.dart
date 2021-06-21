import 'package:flutter/material.dart';
import '../assets/constants.dart';
import '../widgets/reusableCard.dart';
import '../customButtons/BottomButton.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  final List tips;
  ResultsPage({
    required this.bmiResult,
    required this.resultText,
    required this.interpretation,
    required this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                ' Your Result',
                style: kTitleTextStyle,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color1: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMItextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    //Tips text customizations
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tips[0],
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        tips[1],
                        style: tips[3],
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        tips[2],
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(
                    "Made with 💖 from AppTake LTD ©",
                    style: kcopyrithgTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () => Navigator.pop(context),
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
