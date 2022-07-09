// ignore_for_file: constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:message_bar/core/settings/settings.dart';
import 'package:message_bar/features/message_bar/data/repositories/simple_toast_Impl.dart';
import 'package:message_bar/features/message_bar/data/usecase/usecase.dart';
import 'package:message_bar/features/message_bar/domain/entity/custom_message_model.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';
import 'package:message_bar/features/message_bar/domain/usecase/show_custom_toast.dart';

import 'data/repositories/custom_toast_impl.dart';
import 'domain/usecase/show_simple_toast.dart';

class MessageBar {
  ShowSimpleToast showSimpleToast = ShowSimpleToast(SimpleToastImpl());
  ShowCustomToast showCustomToast = ShowCustomToast(CustomToastImpl());

  void init(BuildContext context) {
    showSimpleToast.setContext(context);
  }

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

  void showMessage(String message, {required MessageType type}) {
    showSimpleToast(MessageModel(message: message, messageType: type));
  }

  void showCustomMessage(
    String message, {
    required Color primaryColor,
    required Color backgroundColor,
    required IconData icon,
  }) {
    showCustomToast(CustomMessageModel(
      message,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      iconData: icon,
    ));
  }
}

enum MessageType {
  SUCCESS,
  FAILED,
  ALERT,
  WARNING,
}
