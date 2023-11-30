#ifndef FLUTTER_PLUGIN_SYSTEM_INFO_PLUGIN_H_
#define FLUTTER_PLUGIN_SYSTEM_INFO_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace system_info {

class SystemInfoPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  SystemInfoPlugin();

  virtual ~SystemInfoPlugin();

  // Disallow copy and assign.
  SystemInfoPlugin(const SystemInfoPlugin&) = delete;
  SystemInfoPlugin& operator=(const SystemInfoPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace system_info

#endif  // FLUTTER_PLUGIN_SYSTEM_INFO_PLUGIN_H_
