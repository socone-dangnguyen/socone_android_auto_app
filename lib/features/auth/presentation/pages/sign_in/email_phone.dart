import 'package:android_automactic_app/configs/animation/page_transition.dart';
import 'package:android_automactic_app/configs/theme/app_color.dart';
import 'package:android_automactic_app/features/auth/presentation/pages/sign_in/password.dart';
import 'package:android_automactic_app/features/splash/presentation/widgets/car_header.dart';
import 'package:android_automactic_app/features/splash/presentation/widgets/layouts/sign_in_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmailOrPhonePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  EmailOrPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInLayout(
      pathImageCar: 'assets/images/car_png/car_10.png',
      widgetChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 27),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/svg/google-icon.svg',
              width: 40.0,
              height: 40.0,
            ),
            Container(
              margin: const EdgeInsets.only(top: 25, bottom: 20),
              width: double.infinity,
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                cursorColor: Colors.grey.shade600,
                decoration: InputDecoration(
                  hintText: 'Email or phone',
                  hintStyle: const TextStyle(color: AppColor.whiteColor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: AppColor.greyColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color:
                            Colors.grey.shade600), // Màu viền trắng khi focus
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ), // Màu viền khi có lỗi
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print("tap");
              },
              child: const Text(
                'Forget password',
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      WidgetStateProperty.all<Color>(AppColor.whiteColor),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColor.primaryColor),
                  padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(16)),
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(PageTransition.pageRoute(PasswordPage(), 700));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
