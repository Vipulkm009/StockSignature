import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stock_signature/utilities/constants/global_constants.dart';

class PieChart extends CustomPainter {
  PieChart({@required this.list, @required this.width});

  final list;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    double total = 0;
    // Calculate total amount from each category
    total = getCategorySum();

    // The angle/radian at 12 o'clcok
    double startRadian = -pi / 2;

    for (var index = 0; index < list.length; index++) {
      final currentElement = list.elementAt(index);
      // Amount of length to paint is a percentage of the perimeter of a circle (2 x pi)
      final sweepRadian = currentElement.sum / total * 2 * pi;
      // Used modulo/remainder to catch use case if there is more than 6 colours
      paint.color = kPieChartColors.elementAt(index % list.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );
      // The new startRadian starts from where the previous sweepRadian.
      // Example, a circle perimeter is 10.
      // Category A takes a startRadian 0 and ends at sweepRadian 5.
      // Category B takes the startRadian where Category A left off, which is 5
      // and ends at sweepRadian 7.
      // Category C takes the startRadian where Category B left off, which is 7
      // and so on.
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
