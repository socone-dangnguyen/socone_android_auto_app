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
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 20, height: 2),
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
                        TextSpan(
                          text:
                              'We are solution for those of you who are looking for app can control and visualize parameter in car',
                          style: TextStyle(
                              color: AppColor.greyColor, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300, // Đặt chiều rộng full width
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColor.whiteColor),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColor.primaryColor),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15)),
                    ),
                    child: const Text(
                      'Get Started',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/email-phone');
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
