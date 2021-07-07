import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:another_flushbar/another_flushbar.dart';

void main() {
  const MethodChannel channel = MethodChannel('another_flushbar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AnotherFlushbar.platformVersion, '42');
  });
}
