import 'package:device_system_info/system_info.dart';
import 'package:device_system_info/system_info_method_channel.dart';
import 'package:device_system_info/system_info_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSystemInfoPlatform
    with MockPlatformInterfaceMixin
    implements SystemInfoPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getDeviceInfo() {
    return SystemInfo.getDeviceInfo();
  }

  @override
  Future<String?> getUniqueIdentifier() async {
    return SystemInfo.getUniqueIdentifier();
  }
}

void main() {
  final SystemInfoPlatform initialPlatform = SystemInfoPlatform.instance;

  test('$MethodChannelSystemInfo is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSystemInfo>());
  });

  test('getPlatformVersion', () async {
    //SystemInfo systemInfoPlugin = SystemInfo();
    MockSystemInfoPlatform fakePlatform = MockSystemInfoPlatform();
    SystemInfoPlatform.instance = fakePlatform;

    expect(await SystemInfo.getPlatformVersion(), '42');
  });
}
