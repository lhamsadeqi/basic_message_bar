import 'package:flutter/material.dart';

class CustomMessageModel {
  final Color primaryColor;
  final Color backgroundColor;
  final String message;
  final IconData iconData;

  const CustomMessageModel(
    this.message, {
    required this.backgroundColor,
    required this.primaryColor,
    required this.iconData,
  });
}
