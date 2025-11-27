part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const ONBOARD = _Paths.ONBOARD;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const FORGET_PASS = _Paths.FORGET_PASS;
  static const SELECT_ROLE = _Paths.SELECT_ROLE;

  ///nutritionist module routes
  static const NUTRITIONIST_MAIN = _Paths.NUTRITIONIST_MAIN;

  ///patient module routes
  static const PATIENT_MAIN = _Paths.PATIENT_MAIN;
  static const PATIENT_TAB_HOME = _Paths.PATIENT_TAB_HOME;
  static const PATIENT_TAB_MEALS = _Paths.PATIENT_TAB_MEALS;
  static const PATIENT_TAB_SESSION = _Paths.PATIENT_TAB_SESSION;
  static const PATIENT_TAB_PROGRESS = _Paths.PATIENT_TAB_PROGRESS;
  static const PATIENT_TAB_PROFILE = _Paths.PATIENT_TAB_PROFILE;
}

abstract class _Paths {
  _Paths._();
  static const ONBOARD = '/onboard';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGET_PASS = '/forget-pass';
  static const SELECT_ROLE = '/select-role';

  /// patient module
  static const PATIENT = '/patient';
  static const PATIENT_MAIN = '$PATIENT/main';
  static const PATIENT_TAB_HOME = '$PATIENT_MAIN/home';
  static const PATIENT_TAB_MEALS = '$PATIENT_MAIN/meals';
  static const PATIENT_TAB_SESSION = '$PATIENT_MAIN/session';
  static const PATIENT_TAB_PROGRESS = '$PATIENT_MAIN/progress';
  static const PATIENT_TAB_PROFILE = '$PATIENT_MAIN/profile';

  /// nutritionist
  static const NUTRITIONIST_MAIN = '/nutritionist-main';
}
