import 'package:flutter/material.dart';

class MeasurementCard extends StatelessWidget {
  MeasurementCard({
    @required this.label,
    this.labelStyle,
    @required this.measureValue,
    this.measureStyle,
  });

  final String label;
  final TextStyle labelStyle;
  final int measureValue;
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
        Text(
          measureValue.toString(),
          style: measureStyle ??
              TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
