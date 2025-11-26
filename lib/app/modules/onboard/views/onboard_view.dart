import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../controllers/onboard_controller.dart';
import 'screens/login_signup_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/splash_screen.dart';

class OnboardView extends GetView<OnboardController> {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageViewController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SplashScreen(),
          OnboardingScreen(),
          LoginSignupScreen(),
        ],
      ),
    );
  }
}
