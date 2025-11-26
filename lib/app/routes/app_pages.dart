import 'package:get/get.dart';

import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/patient/home/bindings/home_binding.dart';
import '../modules/patient/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARD;

  static final routes = [
    GetPage(
      name: _Paths.ONBOARD,
      page: () => const OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
