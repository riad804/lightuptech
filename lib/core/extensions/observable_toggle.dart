import 'package:get/get.dart';

extension ObservableToggle on RxBool {
  void toggle() => value = !value;
}