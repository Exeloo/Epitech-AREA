import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aether/views/settings/pages/settings_page.dart';

void main() {
  testWidgets('SettingsPage has Go to Profile and Change API buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SettingsPage(),
      ),
    );

    expect(find.text('Go to Profile'), findsOneWidget);
    expect(find.text('Change API'), findsOneWidget);
  });
}
