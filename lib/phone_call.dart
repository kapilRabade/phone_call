import 'dart:async';
import 'package:flutter/services.dart';

class PhoneCall {
  static const MethodChannel _channel = MethodChannel('phone_call');

  static Future<bool?> calling(String number) async {
    return await _channel.invokeMethod('callUser',
      <String, Object>{
        'number': number,
      },
    );
  }

}
