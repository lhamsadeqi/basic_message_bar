import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class ToastRepository<T> {
  static FToast fToast = FToast();

  setContext(BuildContext context1);

  call(T t);

}
