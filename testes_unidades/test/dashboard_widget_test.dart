import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Testando dashboard display', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));

    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Abrindo a primeira funcionalidade do Dashboard',
      (widgetTester) async {
    await widgetTester.pumpWidget(MaterialApp(home: Dashboard()));

    final firstFeature = find.byType(FeatureItem);

    expect(firstFeature, findsWidgets);
  });
}
