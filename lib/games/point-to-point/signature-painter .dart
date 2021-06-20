import 'package:flutter/material.dart';

class SignaturePainter extends CustomPainter {
  final List<List<Offset>> points;
  SignaturePainter(this.points);

  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (var linePoints in points) {
      for (var i = 0; i < linePoints.length - 1; i++) {
        canvas.drawLine(linePoints[i], linePoints[i + 1], paint);
      }
    }
  }

  bool shouldRepaint(SignaturePainter other) => other.points != points;
}
