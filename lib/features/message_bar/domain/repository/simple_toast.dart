import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';

import '../../message_bar.dart';

abstract class ToastRepository<T> {
  static FToast fToast = FToast();

  setContext(BuildContext context1) {
    fToast.init(context1);
  }

  showToast(T t);
}
