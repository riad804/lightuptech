import 'package:get/get.dart';

import '../../../data/user/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository _repository;
  HomeController(this._repository);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  RxInt getCount() => _repository.getCount();
  void increment() => _repository.increment();
}
