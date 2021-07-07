
import 'dart:async';

import 'package:flutter/services.dart';
export 'flushbar_route.dart';
export 'flushbar_helper.dart';
export 'flushbar.dart';
class AnotherFlushbar {
  static const MethodChannel _channel =
      const MethodChannel('another_flushbar');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
