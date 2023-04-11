#import "PhoneCallPlugin.h"
#if __has_include(<phone_call/phone_call-Swift.h>)
#import <phone_call/phone_call-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "phone_call-Swift.h"
#endif

@implementation PhoneCallPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPhoneCallPlugin registerWithRegistrar:registrar];
}
@end
