import 'package:flutter/material.dart';

class RoundIconButton extends StatefulWidget {
  RoundIconButton({
    this.buttonColor,
    this.splashColor,
    this.iconColor,
    @required this.icon,
    this.width,
    this.height,
    this.onTap,
  });
  final Color buttonColor;
  final Color splashColor;
  final Color iconColor;
  final IconData icon;
  final double width;
  final double height;
  final Function onTap;

  @override
  _RoundIconButtonState createState() => _RoundIconButtonState();
}

class _RoundIconButtonState extends State<RoundIconButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: this.widget.buttonColor ?? Colors.black, // button color
        child: InkWell(
          splashColor: this.widget.splashColor ?? Colors.white, // icon color
          child: SizedBox(
              width: this.widget.width ?? 56.0,
              height: this.widget.height ?? 56.0,
              child: Icon(
                this.widget.icon,
                color: this.widget.iconColor ?? Colors.white,
              )),
          onTap: () {
            this.widget.onTap();
          },
        ),
      ),
    );
  }
}
