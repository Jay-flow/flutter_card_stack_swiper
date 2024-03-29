import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_card_stack_swiper/flutter_card_stack_swiper.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_card_stack_swiper');

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
    expect(await FlutterCardStackSwiper.platformVersion, '42');
  });
}
