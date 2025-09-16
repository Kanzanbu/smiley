import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200, 200), // size of the smiley
      painter: SmileyPainter(),
    );
  }
}

class SmileyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Face
    final facePaint = Paint()..color = Colors.yellow;
    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2,
      facePaint,
    );

    // Eyes
    final eyePaint = Paint()..color = Colors.black;
    canvas.drawCircle(Offset(size.width * 0.35, size.height * 0.35), 10, eyePaint);
    canvas.drawCircle(Offset(size.width * 0.65, size.height * 0.35), 10, eyePaint);

    // Smile 
    final smilePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    final rect = Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: 60);
    canvas.drawArc(rect, 0.1 * 3.14, 0.8 * 3.14, false, smilePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
