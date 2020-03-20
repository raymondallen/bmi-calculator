import 'package:flutter/material.dart';

class BmiArguments {
  final String score;
  final String category;
  final Color categoryColor;
  final String interpretation;

  BmiArguments(
      this.score, this.category, this.categoryColor, this.interpretation);
}
