import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'core/constants/logger.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_service.dart';
import 'main_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: "app.env");
  await GetStorage.init();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);

    runApp(DevicePreview(
        enabled: false,
        builder: (context) => const MainApp(),
      ));
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeService = ThemeService();
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          showPerformanceOverlay: false,
          title: "Application",
          initialBinding: MainBindings(),
          getPages: AppPages.routes,
          initialRoute: AppPages.INITIAL,

          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeService.theme,

          builder: (context, widget) {
            return MediaQuery(data: MediaQuery.of(context), child: widget!);
          },
        );
      },
    );
  }
}
