import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smiley/main.dart';

void main() {
  testWidgets('SmileyApp shows a smiley face', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that MyApp widget is in the widget tree.
    expect(find.byType(MyApp), findsOneWidget);

    // Verify there is a CustomPaint widget (used to draw the smiley).
    expect(find.byType(CustomPaint), findsOneWidget);
  });
}
