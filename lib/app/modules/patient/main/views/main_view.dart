import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lightuptech/core/constants/app_icons.dart';

import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.1, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          },
          child: IndexedStack(
            key: ValueKey(controller.currentIndex.value),
            index: controller.currentIndex.value,
            children: controller.screens,
          ),
        );
      }),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTab,
          items: const [
            BottomNavigationBarItem(icon: Icon(AppIcons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(AppIcons.meal), label: 'Meals'),
            BottomNavigationBarItem(icon: Icon(AppIcons.calendar_empty), label: 'Session'),
            BottomNavigationBarItem(icon: Icon(AppIcons.progress), label: 'Progress'),
            BottomNavigationBarItem(icon: Icon(AppIcons.user), label: 'Profile'),
          ],
        );
      }),
    );
  }
}
