#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CWSplashScreenStaticImage$setIsSplashVideo$)(id, SEL, bool);
static void _patched_ftt_meth_$CWSplashScreenStaticImage$setIsSplashVideo$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$CWSplashScreenStaticImage$setIsSplashVideo$(self, _cmd, arg1);
}

static void _patched_ftt_meth_$DSMLinearVideoAdsProvider$setEnabled$(id self, SEL _cmd, bool arg1) {
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage");
    MSHookMessageEx(_ftt_class_CWSplashScreenStaticImage, @selector(setIsSplashVideo:), (IMP)_patched_ftt_meth_$CWSplashScreenStaticImage$setIsSplashVideo$, (IMP *)_orig_ftt_meth_$CWSplashScreenStaticImage$setIsSplashVideo$);
    Class _ftt_class_DSMLinearVideoAdsProvider = objc_getClass("DSMLinearVideoAdsProvider");
    MSHookMessageEx(_ftt_class_DSMLinearVideoAdsProvider, @selector(setEnabled:), (IMP)_patched_ftt_meth_$DSMLinearVideoAdsProvider$setEnabled$, NULL);
}
