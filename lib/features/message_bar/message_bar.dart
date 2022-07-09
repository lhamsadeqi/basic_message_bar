// ignore_for_file: constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:message_bar/core/settings/settings.dart';
import 'package:message_bar/features/message_bar/data/repositories/close_toast_impl.dart';
import 'package:message_bar/features/message_bar/data/repositories/simple_toast_Impl.dart';
import 'package:message_bar/features/message_bar/domain/entity/custom_message_model.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';
import 'package:message_bar/features/message_bar/domain/usecase/show_custom_toast.dart';
import 'data/repositories/custom_toast_impl.dart';
import 'domain/usecase/close_toast.dart';
import 'domain/usecase/show_simple_toast.dart';

class MessageBar {
  final ShowSimpleToast _showSimpleToast = ShowSimpleToast(SimpleToastImpl());
  final ShowCustomToast _showCustomToast = ShowCustomToast(CustomToastImpl());
  final CloseToast _closeToast = CloseToast(CloseToastImpl());

  void init(BuildContext context) {
    _showSimpleToast.setContext(context);
  }

  setSettings({
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
  }) =>
      Settings().setSettings(
        height: height,
        borderRadius: borderRadius,
        borderThickness: borderThickness,
        boxMargin: boxMargin,
        boxPadding: boxPadding,
        fontSize: fontSize,
        midPadding: midPadding,
        textColor: textColor,
        duration: duration,
        iconPadding: iconPadding,
      );

  void showMessage(String message, {required MessageType type}) {
    _showSimpleToast(MessageModel(message: message, messageType: type));
  }

  void showCustomMessage(
    String message, {
    required Color primaryColor,
    required Color backgroundColor,
    required IconData icon,
  }) {
    _showCustomToast(CustomMessageModel(
      message,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      iconData: icon,
    ));
  }

  void closeToast() {
    _closeToast();
  }
}

enum MessageType {
  SUCCESS,
  FAILED,
  ALERT,
  WARNING,
}
