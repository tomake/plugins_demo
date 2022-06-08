#import "PluginsDemoPlugin.h"
#if __has_include(<plugins_demo/plugins_demo-Swift.h>)
#import <plugins_demo/plugins_demo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugins_demo-Swift.h"
#endif

@implementation PluginsDemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPluginsDemoPlugin registerWithRegistrar:registrar];
}
@end
