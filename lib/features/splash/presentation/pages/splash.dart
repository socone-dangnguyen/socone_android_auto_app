import 'package:android_automactic_app/features/splash/presentation/widgets/car_header.dart';
import 'package:flutter/material.dart';
import 'package:android_automactic_app/configs/theme/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CarHeader(
            pathImage: 'assets/images/car_png/car_1.png',
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: AppColor.whiteColor,
            ),
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    children: [
                      TextSpan(
                        text: 'Automotive App!\n',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Easily to use.\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
