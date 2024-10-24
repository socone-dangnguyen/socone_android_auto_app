import 'package:flutter/material.dart';

class PageTransition {
  static Route pageRoute(widget, duration) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(2.0, 0.0); // Định nghĩa điểm bắt đầu (phải)
        const end = Offset.zero; // Định nghĩa điểm kết thúc (giữa)
        const curve = Curves.easeInOut; // Định nghĩa đường cong

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      transitionDuration: Duration(
          milliseconds: duration), // Thời gian cho hiệu ứng chuyển tiếp
    );
  }
}
