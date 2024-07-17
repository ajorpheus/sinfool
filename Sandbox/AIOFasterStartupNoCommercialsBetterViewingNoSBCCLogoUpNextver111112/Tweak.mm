#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CCSUSplashViewController$dismissSplashScreenAfterDelay$)(id, SEL, double);
static void _patched_ftt_meth_$CCSUSplashViewController$dismissSplashScreenAfterDelay$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CCSUSplashViewController$dismissSplashScreenAfterDelay$(self, _cmd, arg1);
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$(id self, SEL _cmd, CGRect arg1, id arg2, bool arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCSUSplashViewController = objc_getClass("CCSUSplashViewController");
    MSHookMessageEx(_ftt_class_CCSUSplashViewController, @selector(dismissSplashScreenAfterDelay:), (IMP)_patched_ftt_meth_$CCSUSplashViewController$dismissSplashScreenAfterDelay$, (IMP *)_orig_ftt_meth_$CCSUSplashViewController$dismissSplashScreenAfterDelay$);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundView, @selector(initWithFrame:foregroundStyle:usesVerticalLayout:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundView$initWithFrame$foregroundStyle$usesVerticalLayout$, NULL);
}
