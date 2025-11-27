import 'package:get/get.dart';
import 'package:lightuptech/app/modules/patient/home/views/home_view.dart';
import 'package:lightuptech/app/modules/patient/meals/views/meals_view.dart';
import 'package:lightuptech/app/modules/patient/profile/views/profile_view.dart';
import 'package:lightuptech/app/modules/patient/progress/views/progress_view.dart';
import 'package:lightuptech/app/modules/patient/session/views/session_view.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final screens = [
    HomeView(),
    MealsView(),
    SessionView(),
    ProgressView(),
    ProfileView(),
  ];

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
