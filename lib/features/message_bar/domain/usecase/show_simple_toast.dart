import 'package:flutter/cupertino.dart';
import 'package:message_bar/features/message_bar/domain/entity/message_model.dart';
import '../../../../core/usecases/show_usecase.dart';
import '../repository/toast_repository.dart';

class ShowSimpleToast implements ShowUseCase<MessageModel> {
  final ToastRepository toastRepository;

  ShowSimpleToast(this.toastRepository);

  setContext(context1) {
    toastRepository.setContext(context1);
  }

  @override
  call(MessageModel entityModel) {
    toastRepository(entityModel);
  }


}
