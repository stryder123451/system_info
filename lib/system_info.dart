import 'system_info_platform_interface.dart';

class SystemInfo {
  Future<String?> getPlatformVersion() {
    return SystemInfoPlatform.instance.getPlatformVersion();
  }

  Future<String?> getDeviceInfo() {
    return SystemInfoPlatform.instance.getDeviceInfo();
  }
}
