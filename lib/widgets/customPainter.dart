import 'package:flutter/material.dart';

class HalfCirclesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.fill;

    // بائیں نصف دائرہ
    paint.color = Colors.yellow; // بائیں نصف دائرہ کا رنگ
    Path leftPath = Path()
      ..moveTo(0, size.height * 0.8)
      ..lineTo(0, 0)
      ..lineTo(size.width*0.7, 0)
    
      ..close();
    canvas.drawPath(leftPath, paint);

    // دائیں نصف دائرہ
    paint.color = Colors.blue; // دائیں نصف دائرہ کا رنگ
    Path rightPath = Path()
      ..moveTo(size.width*0, size.height*0.6)
      ..arcTo(
        Rect.fromLTWH(
          size.width * 0.5 - size.width * 0.5, 
          1, 
          size.width*0.5, 
          size.height*0
        ),
        3.14, // نصف دائرہ کی شروعاتی زاویہ
        0, // نصف دائرہ کا زاویہ
        false
      )
      ..close();
    canvas.drawPath(rightPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
