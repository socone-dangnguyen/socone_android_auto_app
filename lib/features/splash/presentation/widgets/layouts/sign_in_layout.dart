import 'package:android_automactic_app/configs/theme/app_color.dart';
import 'package:android_automactic_app/features/splash/presentation/widgets/car_header.dart';
import 'package:flutter/material.dart';

class SignInLayout extends StatelessWidget {
  final Widget widgetChild;
  final String pathImageCar;
  const SignInLayout(
      {super.key, required this.widgetChild, required this.pathImageCar});

  @override
  Widget build(BuildContext context) {
    Gradient backgroundGradient = LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.topLeft,
      colors: [
        Colors.black,
        Colors.grey[600]!
      ], // Tùy chỉnh màu sắc theo nhu cầu
    );
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: backgroundGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CarHeader(
              pathImage: pathImageCar,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: widgetChild,
            )
          ],
        ),
      ),
    );
  }
}
