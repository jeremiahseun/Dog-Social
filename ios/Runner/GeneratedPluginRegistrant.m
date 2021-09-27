//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<fullscreen/FullscreenPlugin.h>)
#import <fullscreen/FullscreenPlugin.h>
#else
@import fullscreen;
#endif

#if __has_include(<modal_progress_hud_nsn/ModalProgressHudNsnPlugin.h>)
#import <modal_progress_hud_nsn/ModalProgressHudNsnPlugin.h>
#else
@import modal_progress_hud_nsn;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FullscreenPlugin registerWithRegistrar:[registry registrarForPlugin:@"FullscreenPlugin"]];
  [ModalProgressHudNsnPlugin registerWithRegistrar:[registry registrarForPlugin:@"ModalProgressHudNsnPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
}

@end
