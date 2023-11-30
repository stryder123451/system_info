#include "include/system_info/system_info_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "system_info_plugin.h"

void SystemInfoPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  system_info::SystemInfoPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
