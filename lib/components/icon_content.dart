import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({
    @required this.icon,
    this.iconColor,
    this.iconSize,
    @required this.label,
    @required this.labelStyle,
  });

  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String label;
  final TextStyle labelStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: iconColor ?? Colors.white,
          size: iconSize ?? 60.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
