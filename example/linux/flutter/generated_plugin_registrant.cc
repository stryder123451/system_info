//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <system_info/system_info_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) system_info_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SystemInfoPlugin");
  system_info_plugin_register_with_registrar(system_info_registrar);
}
