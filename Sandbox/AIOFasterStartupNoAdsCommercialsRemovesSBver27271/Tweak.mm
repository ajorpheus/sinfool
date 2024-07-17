#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$NBCDSplashScreenViewController$isVideoFinished(id self, SEL _cmd) {
    // Faster Startup (Removes NBC Animation)
    return 1;
}

static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(id self, SEL _cmd, float arg1, int arg2) {
    // Removes Status Bar Foreground
    return NULL;
}

static BOOL _patched_ftt_meth_$ANVPlayerConfig$serverSideAdSkipPreroll(id self, SEL _cmd) {
    // Disables Preroll Ads
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NBCDSplashScreenViewController = objc_getClass("NBCDSplashScreenViewController");
    MSHookMessageEx(_ftt_class_NBCDSplashScreenViewController, @selector(isVideoFinished), (IMP)_patched_ftt_meth_$NBCDSplashScreenViewController$isVideoFinished, NULL);
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$, NULL);
    Class _ftt_class_ANVPlayerConfig = objc_getClass("ANVPlayerConfig");
    MSHookMessageEx(_ftt_class_ANVPlayerConfig, @selector(serverSideAdSkipPreroll), (IMP)_patched_ftt_meth_$ANVPlayerConfig$serverSideAdSkipPreroll, NULL);
}
