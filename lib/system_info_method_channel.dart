import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'system_info_platform_interface.dart';

/// An implementation of [SystemInfoPlatform] that uses method channels.
class MethodChannelSystemInfo extends SystemInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('system_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getDeviceInfo() async {
    try {
      final version = await methodChannel.invokeMethod<String>('getDeviceInfo');
      return version;
    } catch (e) {
      return "Not implented because of $e";
    }
  }
}
