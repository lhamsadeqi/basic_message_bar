import 'package:message_bar/core/usecases/close_usecase.dart';
import 'package:message_bar/features/message_bar/domain/repository/toast_repository.dart';

class CloseToast implements CloseUseCase {
  final ToastRepository toastRepository;

  CloseToast(this.toastRepository);


  @override
  call() {
    toastRepository(NoParams());
  }
}

class NoParams{}