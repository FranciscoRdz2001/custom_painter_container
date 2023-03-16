import 'dart:math';

import 'package:flutter/material.dart';

class CustomContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const radius = 30.0;
    Paint paint = Paint()
      ..color = Colors.blue[900]!
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    Path path = Path();
    path.addRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          0,
          0,
          size.width,
          size.height,
        ),
        const Radius.circular(radius),
      ),
    );
    canvas.drawPath(path, paint);

    // Method to convert degree to radians
    path.moveTo(radius * 0.8, size.height);
    path.conicTo(
      size.width * 0.5,
      size.height * 1.1,
      size.width - radius * 0.7,
      size.height * 0.995,
      20,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
