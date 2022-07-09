import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings {
  static double _height = 60;
  static double _borderRadius = 15;
  static EdgeInsets _boxPadding = const EdgeInsets.all(7);
  static EdgeInsets _boxMargin = const EdgeInsets.all(10);
  static double _borderThickness = 1;
  static double _iconPadding = 2;
  static double _midPadding = 20;
  static double _fontSize = 14;
  static Color _textColor = Colors.black;
  static Duration _duration = const Duration(seconds: 3);

  double get height => _height;
  double get borderRadius => _borderRadius;
  EdgeInsets get boxPadding => _boxPadding;
  EdgeInsets get boxMargin => _boxMargin;
  double get borderThickness => _borderThickness;
  double get midPadding => _midPadding;
  double get fontSize => _fontSize;
  double get iconPadding => _iconPadding;
  Color get textColor => _textColor;
  Duration get duration => _duration;

  void setSettings({
    double? height,
    double? borderRadius,
    EdgeInsets? boxPadding,
    EdgeInsets? boxMargin,
    double? borderThickness,
    double? midPadding,
    double? iconPadding,
    double? fontSize,
    Color? textColor,
    Duration? duration,
  }) {
    if (height != null) {
      _height = height;
    }

    if (borderRadius != null) {
      _borderRadius = borderRadius;
    }
    if (boxPadding != null) {
      _boxPadding = boxPadding;
    }
    if (boxMargin != null) {
      _boxMargin = boxMargin;
    }
    if (borderThickness != null) {
      _borderThickness = borderThickness;
    }
    if (midPadding != null) {
      _midPadding = midPadding;
    }
    if (fontSize != null) {
      _fontSize = fontSize;
    }
    if (textColor != null) {
      _textColor = textColor;
    }
    if (duration != null) {
      _duration = duration;
    }
    if (iconPadding != null) {
      _iconPadding = iconPadding;
    }
  }
}
