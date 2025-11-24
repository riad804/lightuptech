import 'package:get/get.dart';
import 'package:lightuptech/app/routes/app_pages.dart';

class OnboardController extends GetxController {

  void goToHome() {
    Get.offNamed(Routes.HOME);
  }

}
