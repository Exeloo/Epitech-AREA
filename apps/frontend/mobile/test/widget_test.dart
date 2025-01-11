import 'package:flutter_test/flutter_test.dart';
import 'package:aether/main.dart';

void main() {
  testWidgets('Sign in button is present', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Sign Up'), findsOneWidget);
  });
}
