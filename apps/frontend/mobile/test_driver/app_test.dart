import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('App Test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('Sign in button is present', () async {
      expect(await driver.getText(find.text('Sign in')), 'Sign in');
    });

    test('Sign up button is present', () async {
      expect(await driver.getText(find.text('Get started')), 'Get started');
    });
  });
}
