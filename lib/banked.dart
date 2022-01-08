
import 'dart:async';

import 'package:flutter/services.dart';

class Banked {
  static const MethodChannel _channel = MethodChannel('banked');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
