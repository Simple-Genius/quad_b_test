import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quad_b_test/app/views/views/splash_screen_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      home: SplashScreenView(),
      //initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
