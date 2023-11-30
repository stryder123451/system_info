import 'system_info_platform_interface.dart';

class SystemInfo {
  static Future<String?> getPlatformVersion() {
    return SystemInfoPlatform.instance.getPlatformVersion();
  }

  static Future<String?> getDeviceInfo() {
    return SystemInfoPlatform.instance.getDeviceInfo();
  }

  static Future<String?> getUniqueIdentifier() {
    return SystemInfoPlatform.instance.getUniqueIdentifier();
  }
}
