import 'package:message_bar/features/message_bar/domain/entity/custom_message_model.dart';

import '../../../../core/usecases/show_usecase.dart';
import '../repository/toast_repository.dart';

class ShowCustomToast implements ShowUseCase<CustomMessageModel> {
  final ToastRepository toastRepository;

  ShowCustomToast(this.toastRepository);

  setContext(context1) {
    toastRepository.setContext(context1);
  }

  @override
  call(CustomMessageModel customMessageModel) {
    toastRepository(customMessageModel);
  }
}
