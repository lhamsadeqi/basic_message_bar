import 'package:flutter/cupertino.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/simple_toast.dart';

class ShowSimpleToast implements UseCase<MessageModel> {
  final ToastRepository toastRepository;

  ShowSimpleToast(this.toastRepository);

  setContext(context1) {
    toastRepository.setContext(context1);
  }

  @override
  call(MessageModel entityModel) {
    toastRepository.showToast(entityModel);
  }
}
