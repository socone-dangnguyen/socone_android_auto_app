import 'package:android_automactic_app/features/auth/presentation/pages/sign_in/email_phone.dart';
import 'package:android_automactic_app/features/auth/presentation/pages/sign_in/password.dart';
import 'package:android_automactic_app/features/splash/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String emailPhone = '/email-phone';
  static const String password = '/password';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case emailPhone:
        return MaterialPageRoute(builder: (_) => EmailOrPhonePage());
      case password:
        return MaterialPageRoute(builder: (_) => PasswordPage());
      default:
        throw Exception('Route not found');
    }
  }
}
