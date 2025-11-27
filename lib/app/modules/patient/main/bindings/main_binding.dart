import 'package:get/get.dart';
import 'package:lightuptech/app/modules/patient/home/bindings/home_binding.dart';
import 'package:lightuptech/app/modules/patient/meals/bindings/meals_binding.dart';
import 'package:lightuptech/app/modules/patient/profile/bindings/profile_binding.dart';
import 'package:lightuptech/app/modules/patient/progress/bindings/progress_binding.dart';
import 'package:lightuptech/app/modules/patient/session/bindings/session_binding.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController(), permanent: true);

    HomeBinding().dependencies();
    MealsBinding().dependencies();
    ProgressBinding().dependencies();
    SessionBinding().dependencies();
    ProfileBinding().dependencies();
  }
}
