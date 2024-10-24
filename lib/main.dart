import 'package:android_automactic_app/configs/routes/routes.dart';
import 'package:android_automactic_app/configs/theme/app_color.dart';
import 'package:flutter/material.dart';

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
      initialRoute: Routes.splash, // Set the initial route
      onGenerateRoute: Routes.generateRoute, // Use your route generator
    );
  }
}
