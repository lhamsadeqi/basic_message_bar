// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';

class MessageBar {
  void init(BuildContext context) {}

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
