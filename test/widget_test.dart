import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:switch_widget_demo/main.dart';

void main() {
  testWidgets('Switch toggles light and dark theme text', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const SwitchDemoApp());

    expect(find.text('This is light theme.'), findsOneWidget);

    await tester.tap(find.byType(Switch));
    await tester.pumpAndSettle();

    expect(find.text('This is dark theme.'), findsOneWidget);
  });
}
