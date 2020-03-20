import 'dart:math';
import 'package:flutter/material.dart';

class Results {
  double score;
  String category;
  String interpretation;
}

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;

  double score;
  String category;
  Color categoryColor;
  String interpretation;
  String healthyRange;
  String healthyWeight;
  String recommendation;

  void calculateBMI() {
    // Calculate score
    score = weight / pow(height / 100, 2);

    // Apply WHO guidelines
    if (score < 18.5) {
      category = 'Underweight';
      categoryColor = Colors.red;
      interpretation =
          'Your BMI is considered underweight. Keep in mind that an underweight BMI calculation may pose certain health risks. Please consult with your healthcare provider for more information about BMI calculations.';
    } else if (score >= 18.5 && score <= 24.9) {
      category = 'Normal';
      categoryColor = Color(0xff24d876);
      interpretation =
          'Your BMI is considered normal. This healthy weight helps reduce your risk of serious health conditions and means you’re close to your fitness goals.';
    } else if (score > 25 && score < 29.9) {
      category = 'Pre-obesity';
      categoryColor = Colors.yellow;
      interpretation =
          'Your BMI is considered overweight. Being overweight may increase your risk of cardiovascular disease. Consult with your healthcare provider and consider making lifestyle changes through healthy eating and fitness to improve your health.';
    } else if (score >= 30 && score < 35) {
      category = 'Obese Class I';
      categoryColor = Colors.red;
      interpretation =
          'Your BMI is considered obese. People with obesity are at increased risk for many diseases and health conditions, including cardiovascular disease, high blood pressure (Hypertension), Type 2 diabetes, breathing problems and more. Consult with your healthcare provider and consider making lifestyle changes through healthy eating and fitness to improve your overall health and quality of life.';
    } else if (score >= 35 && score < 40) {
      category = 'Obese Class II';
      categoryColor = Colors.red;
      interpretation =
          'Your BMI is considered obese. People with obesity are at increased risk for many diseases and health conditions, including cardiovascular disease, high blood pressure (Hypertension), Type 2 diabetes, breathing problems and more. Consult with your healthcare provider and consider making lifestyle changes through healthy eating and fitness to improve your overall health and quality of life.';
    } else if (score >= 40) {
      category = 'Obese Class III';
      categoryColor = Colors.red;
      interpretation =
          'Your BMI is considered obese. People with obesity are at increased risk for many diseases and health conditions, including cardiovascular disease, high blood pressure (Hypertension), Type 2 diabetes, breathing problems and more. Consult with your healthcare provider and consider making lifestyle changes through healthy eating and fitness to improve your overall health and quality of life.';
    }
  }

  String bmiText() {
    if (score >= 25) {
      return 'Overweight';
    } else if (score > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (score >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (score > 18.5) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than normal body weight. You should increase your food intake.';
    }
  }
}
