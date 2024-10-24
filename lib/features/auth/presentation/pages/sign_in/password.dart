import 'package:android_automactic_app/configs/theme/app_color.dart';
import 'package:android_automactic_app/features/splash/presentation/widgets/layouts/sign_in_layout.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInLayout(
      pathImageCar: "assets/images/car_png/car_6.png",
      widgetChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 27),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 25),
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
            TextField(
              cursorColor: Colors.grey.shade600,
              style: const TextStyle(
                color: AppColor.whiteColor,
              ),
              decoration: InputDecoration(
                hintText: 'Enter password',
                hintStyle: TextStyle(color: Colors.grey.shade700),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColor.whiteColor)),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                style: ButtonStyle(
                  foregroundColor:
                      WidgetStateProperty.all<Color>(AppColor.whiteColor),
                  backgroundColor:
                      WidgetStateProperty.all<Color>(AppColor.primaryColor),
                  padding: WidgetStateProperty.all<EdgeInsets>(
                    const EdgeInsets.all(16),
                  ),
                ),
                onPressed: () {},
                child: const Text('Login',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
