import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:message_bar/core/settings/settings.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';
import 'package:message_bar/features/message_bar/presentation/widgets/message_widget.dart';
import '../../domain/repository/toast_repository.dart';

class SimpleToastImpl implements ToastRepository<MessageModel> {
  @override
  final FToast fToast = FToast();

  @override
  call(MessageModel messageModel) {
    fToast.showToast(
        child: MessageWidget(
          type: messageModel.messageType,
          message: messageModel.message,
        ),
        toastDuration: Settings().duration);
  }

  @override
  setContext(BuildContext context1) {
    fToast.init(context1);
  }


}
