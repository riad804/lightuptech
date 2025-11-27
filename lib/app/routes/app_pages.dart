import 'package:get/get.dart';

import '../modules/auth/bindings/login_binding.dart';
import '../modules/auth/bindings/register_binding.dart';
import '../modules/auth/views/login_view.dart';
import '../modules/auth/views/register_view.dart';
import '../modules/auth/bindings/forget_pass_binding.dart';
import '../modules/auth/views/forget_pass_view.dart';
import '../modules/auth/views/screens/role_select_screen.dart';
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
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASS,
      page: () => const ForgetPassView(),
      binding: ForgetPassBinding(),
    ),
    GetPage(
      name: _Paths.SELECT_ROLE,
      page: () => const RoleSelectScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 250),
    ),
  ];
}
