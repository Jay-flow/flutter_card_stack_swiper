import 'dart:async';

import 'package:flutter/services.dart';

class FlutterCardStackSwiper {
  static const MethodChannel _channel =
      const MethodChannel('flutter_card_stack_swiper');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
