import '../components/stat_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/main_button.dart';
import '../bmi_arguments.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BmiArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: StatCard(
              color: kCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    args.category.toUpperCase(),
                    style: kBMITextStyle.copyWith(color: args.categoryColor),
                  ),
                  Text(
                    args.score,
                    style: kBMIScoreStyle,
                  ),
                  Text(
                    args.interpretation,
                    style: kBMIInterpretationStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: MainButton(
                color: kControlColor,
                label: 'START OVER',
                labelStyle: kButtonTextStyle,
                onTap: () {
                  Navigator.popAndPushNamed(context, '/');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
