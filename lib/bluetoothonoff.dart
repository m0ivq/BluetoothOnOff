// Written by Fleximex
// 2019

import 'dart:async';
import 'package:flutter/services.dart';

class BluetoothOnOff {
  static const MethodChannel _channel = const MethodChannel('BluetoothOnOff');

  static Future<bool> get turnOnBluetooth async {
    int? result = -1;
    try {
      result = await (_channel.invokeMethod('turnOnBluetooth') as FutureOr<int>);
    } on PlatformException catch (e) {
      print(e);
    }
    if (result == 1) {
      print("SUCCESS: Bluetooth is turned on");
      return true;
    }
    return false;
  }

  static Future<bool> get turnOffBluetooth async {
    int? result = -1;
    try {
      result = await (_channel.invokeMethod('turnOffBluetooth') as FutureOr<int>);
    } on PlatformException catch (e) {
      print(e);
    }
    if (result == 1) {
      print("SUCCESS: Bluetooth is turned on");
      return true;
    }
    return false;
  }
}
