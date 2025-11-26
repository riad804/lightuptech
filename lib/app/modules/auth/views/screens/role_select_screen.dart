import 'package:flutter/material.dart';

import '../../../../../core/constants/app_icons.dart';
import '../widgets/role_content_widget.dart';

class RoleSelectScreen extends StatelessWidget {
  const RoleSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          RoleContentWidget(
            type: UserRoleType.PATIENT,
            title: "I'm a Patient",
            content:
            'Track meals, connect with nutritionists, and achieve your health goals',
            icon: AppIcons.user_1,
          ),
          RoleContentWidget(
            type: UserRoleType.NUTRITIONIST,
            title: "I'm a Patient",
            content:
            'Track meals, connect with nutritionists, and achieve your health goals',
            icon: AppIcons.user_1,
          ),
        ],
      ),
    );
  }
}
