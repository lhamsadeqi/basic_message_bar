import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:message_bar/features/message_bar/domain/entity/custom_message_model.dart';
import 'package:message_bar/features/message_bar/presentation/widgets/custom_message_widget.dart';

import '../../domain/repository/simple_toast.dart';

class CustomToastImpl implements ToastRepository<CustomMessageModel> {
  @override
  final FToast fToast = FToast();

  @override
  showToast(CustomMessageModel messageModel) {
    fToast.showToast(
        child: CustomMessageWidget(
      icon: messageModel.iconData,
      primaryColor: messageModel.primaryColor,
      backgroundColor: messageModel.backgroundColor,
      message: messageModel.message,
    ));
  }

  @override
  setContext(BuildContext context1) {
    fToast.init(context1);
  }
}
