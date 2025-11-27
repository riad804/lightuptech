import 'package:get/get.dart';

import '../modules/auth/bindings/forget_pass_binding.dart';
import '../modules/auth/bindings/login_binding.dart';
import '../modules/auth/bindings/register_binding.dart';
import '../modules/auth/views/forget_pass_view.dart';
import '../modules/auth/views/login_view.dart';
import '../modules/auth/views/register_view.dart';
import '../modules/auth/views/screens/role_select_screen.dart';
import '../modules/nutritionist/main/views/main_view.dart' as nutritionist;
import '../modules/onboard/bindings/onboard_binding.dart';
import '../modules/onboard/views/onboard_view.dart';
import '../modules/patient/home/bindings/home_binding.dart';
import '../modules/patient/home/views/home_view.dart';
import '../modules/patient/main/bindings/main_binding.dart' as patient;
import '../modules/patient/main/views/main_view.dart' as patient;
import '../modules/patient/meals/bindings/meals_binding.dart';
import '../modules/patient/meals/views/meals_view.dart';
import '../modules/patient/profile/bindings/profile_binding.dart';
import '../modules/patient/profile/views/profile_view.dart';
import '../modules/patient/progress/bindings/progress_binding.dart';
import '../modules/patient/progress/views/progress_view.dart';
import '../modules/patient/session/bindings/session_binding.dart';
import '../modules/patient/session/views/session_view.dart';

import '../modules/nutritionist/main/bindings/main_binding.dart'
    as nutritionist;

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

    /// nutritionist pages
    GetPage(
      name: _Paths.NUTRITIONIST_MAIN,
      page: () => const nutritionist.MainView(),
      binding: nutritionist.MainBinding(),
    ),


    /// patient pages
    GetPage(
      name: _Paths.PATIENT_MAIN,
      page: () => const patient.MainView(),
      binding: patient.MainBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_TAB_HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_TAB_MEALS,
      page: () => const MealsView(),
      binding: MealsBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_TAB_SESSION,
      page: () => const SessionView(),
      binding: SessionBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_TAB_PROGRESS,
      page: () => const ProgressView(),
      binding: ProgressBinding(),
    ),
    GetPage(
      name: _Paths.PATIENT_TAB_PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
