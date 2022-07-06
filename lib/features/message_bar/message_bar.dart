// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:message_bar/core/settings/settings.dart';

class MessageBar {
  void init(BuildContext context) {}

  setSettings({
    double? height,
    double? borderRadius,
    EdgeInsets? boxPadding,
    EdgeInsets? boxMargin,
    double? borderThickness,
    double? midPadding,
    double? fontSize,
    Color? textColor,
  }) =>
      Settings().setSettings(
          height: height,
          borderRadius: borderRadius,
          borderThickness: borderThickness,
          boxMargin: boxMargin,
          boxPadding: boxPadding,
          fontSize: fontSize,
          midPadding: midPadding,
          textColor: textColor);

  void showMessage(String message, {required MessageType type}) {}

  void showCustomMessage({
    required Color color,
    required Icon icon,
  }) {}
}

enum MessageType {
  SUCCESS,
  FAILED,
  ALERT,
  WARNING,
}
