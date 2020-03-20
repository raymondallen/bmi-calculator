import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton({this.color, @required this.label, this.labelStyle, this.onTap});

  final Color color;
  final String label;
  final TextStyle labelStyle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        label,
        style: labelStyle ??
            TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w700,
                color: Colors.white),
      ),
      color: color,
      onPressed: onTap,
    );
  }
}
