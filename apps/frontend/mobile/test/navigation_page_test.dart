import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aether/views/applet/pages/applet_creation.dart';
import 'package:aether/views/mainPage/pages/main_navigation.dart';

void main() {
  group('MainNavigationPage Tests', () {
    testWidgets('Floating action button opens AppletCreation page',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: MainNavigationPage()));

      await tester.tap(find.byType(FloatingActionButton));
      await tester.pumpAndSettle();

      expect(find.byType(AppletCreation), findsOneWidget);
    });
  });
}
