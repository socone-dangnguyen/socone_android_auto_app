import 'package:android_automactic_app/configs/theme/app_color.dart';
import 'package:flutter/material.dart';

import 'features/splash/presentation/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: AppColor.whiteColor),
      home: const SplashPage(),
    );
  }
}
