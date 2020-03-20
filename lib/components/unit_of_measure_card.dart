import 'package:flutter/material.dart';

class UnitOfMeasureCard extends StatelessWidget {
  UnitOfMeasureCard({
    @required this.label,
    this.labelStyle,
    @required this.measureValue,
    @required this.unitOfMeasure,
    this.measureStyle,
  });

  final String label;
  final TextStyle labelStyle;
  final double measureValue;
  final String unitOfMeasure;
  final TextStyle measureStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: labelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              measureValue.toInt().toString(),
              style: measureStyle ??
                  TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
            ),
            Text(
              unitOfMeasure,
              style: labelStyle,
            ),
          ],
        ),
      ],
    );
  }
}
