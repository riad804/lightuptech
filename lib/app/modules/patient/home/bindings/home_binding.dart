import 'package:get/get.dart';

import '../../../../data/user/user_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<HomeController>(
      () => HomeController(Get.find<UserRepository>()),
    );
  }
}
