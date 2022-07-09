import 'package:message_bar/features/message_bar/domain/entity/custom_message_model.dart';

import '../../../../core/usecases/usecase.dart';
import '../repository/simple_toast.dart';

class ShowCustomToast implements UseCase<CustomMessageModel> {
  final ToastRepository toastRepository;

  ShowCustomToast(this.toastRepository);

  setContext(context1) {
    toastRepository.setContext(context1);
  }

  @override
  call(CustomMessageModel customMessageModel) {
    toastRepository.showToast(customMessageModel);
  }
}
