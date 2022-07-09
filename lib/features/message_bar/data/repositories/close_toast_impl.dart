import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:message_bar/features/message_bar/domain/repository/toast_repository.dart';
import 'package:message_bar/features/message_bar/domain/usecase/close_toast.dart';

class CloseToastImpl implements ToastRepository<NoParams> {
  @override
  final FToast fToast = FToast();

  @override
  call(NoParams noParams) {
    fToast.removeCustomToast();
  }

  @override
  setContext(BuildContext context1) {
    fToast.init(context1);
  }
}
