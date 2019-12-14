#import "FlutterCardStackSwiperPlugin.h"
#if __has_include(<flutter_card_stack_swiper/flutter_card_stack_swiper-Swift.h>)
#import <flutter_card_stack_swiper/flutter_card_stack_swiper-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_card_stack_swiper-Swift.h"
#endif

@implementation FlutterCardStackSwiperPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCardStackSwiperPlugin registerWithRegistrar:registrar];
}
@end
