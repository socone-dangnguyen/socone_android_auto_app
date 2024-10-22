import 'package:flutter/material.dart';

class CarHeader extends StatelessWidget {
  final String pathImage;
  final double height;
  const CarHeader({super.key, required this.pathImage, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height / 3,
      decoration: const BoxDecoration(
        color: Colors.transparent, // Màu nền trong suốt
      ),
      child: OverflowBox(
        maxWidth: double.infinity, // Cho phép con tràn ra ngoài
        child: Row(
          children: [
            const SizedBox(width: 200),
            Image.asset(pathImage, fit: BoxFit.cover, width: 600),
          ],
        ),
      ),
    );
    ;
  }
}
