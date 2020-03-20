import 'package:bmi_calculator/calculator.dart';

import '../components/measurement_card.dart';
import '../components/unit_of_measure_card.dart';
import 'package:flutter/material.dart';
import '../components/stat_card.dart';
import '../components/icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/main_button.dart';
import '../components/round_icon_button.dart';
import '../bmi_arguments.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class Measures {
  Measures({this.height, this.weight, this.age});
  double height;
  int weight;
  int age;
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;

  Measures measures = Measures(height: 175.0, weight: 71, age: 45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: StatCard(
                    color: kCardColor,
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      iconSize: kIconSize,
                      iconColor: (gender == Gender.male
                          ? kActiveIconColor
                          : kInactiveIconColor),
                      label: 'MALE',
                      labelStyle: (gender == Gender.male
                          ? kActiveLabelStyle
                          : kInActiveLabelStyle),
                    ),
                  ),
                ),
                Expanded(
                  child: StatCard(
                    color: kCardColor,
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      iconSize: kIconSize,
                      iconColor: (gender == Gender.female
                          ? kActiveIconColor
                          : kInactiveIconColor),
                      label: 'FEMALE',
                      labelStyle: (gender == Gender.female
                          ? kActiveLabelStyle
                          : kInActiveLabelStyle),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: StatCard(
              color: kCardColor,
              child: Column(
                children: <Widget>[
                  UnitOfMeasureCard(
                    label: 'HEIGHT',
                    labelStyle: kActiveLabelStyle,
                    measureValue: measures.height,
                    unitOfMeasure: 'cm',
                    measureStyle: kMeasureStyle,
                  ),
                  Slider.adaptive(
                    value: measures.height,
                    min: 10.0,
                    max: 300.0,
                    activeColor: kControlColor,
                    onChanged: (double newValue) {
                      setState(() {
                        measures.height = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: StatCard(
                    color: kCardColor,
                    child: Column(
                      children: <Widget>[
                        MeasurementCard(
                          label: 'WEIGHT',
                          labelStyle: kActiveLabelStyle,
                          measureValue: measures.weight,
                          measureStyle: kMeasureStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              buttonColor: kBackgroundColor,
                              iconColor: kTextColor,
                              splashColor: kControlColor,
                              icon: Icons.remove,
                              width: 48.0,
                              height: 48.0,
                              onTap: () {
                                setState(() {
                                  measures.weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              buttonColor: kBackgroundColor,
                              iconColor: kTextColor,
                              splashColor: kControlColor,
                              icon: Icons.add,
                              width: 48.0,
                              height: 48.0,
                              onTap: () {
                                setState(() {
                                  measures.weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: StatCard(
                    color: kCardColor,
                    child: Column(
                      children: <Widget>[
                        MeasurementCard(
                          label: 'AGE',
                          labelStyle: kActiveLabelStyle,
                          measureValue: measures.age,
                          measureStyle: kMeasureStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              buttonColor: kBackgroundColor,
                              iconColor: kTextColor,
                              splashColor: kControlColor,
                              icon: Icons.remove,
                              width: 48.0,
                              height: 48.0,
                              onTap: () {
                                setState(() {
                                  measures.age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              buttonColor: kBackgroundColor,
                              iconColor: kTextColor,
                              splashColor: kControlColor,
                              icon: Icons.add,
                              width: 48.0,
                              height: 48.0,
                              onTap: () {
                                setState(() {
                                  measures.age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: MainButton(
                color: kControlColor,
                label: 'CALCULATE YOUR BMI',
                labelStyle: kButtonTextStyle,
                onTap: () {
                  Calculator calculator = Calculator(
                      height: measures.height.toInt(), weight: measures.weight);
                  calculator.calculateBMI();
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: BmiArguments(
                      calculator.score.toStringAsFixed(1),
                      calculator.category,
                      calculator.categoryColor,
                      calculator.interpretation,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
