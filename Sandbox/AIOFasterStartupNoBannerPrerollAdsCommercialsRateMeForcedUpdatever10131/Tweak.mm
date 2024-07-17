#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$)(id, SEL, unsigned long long);
static id _patched_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 0;
    return _orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$DSMLinearVideoAdsManager$providerPrePodPromo(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$DSMLinearVideoAdsManager$enabled(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$GADBannerView$slot(id self, SEL _cmd) {
    return NULL;
}

static bool _patched_ftt_meth_$PWAppConfiguration$isForceUpgradeEnabled(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$PWAppConfiguration$isRatingsEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CWSplashScreenStaticImage = objc_getClass("CWSplashScreenStaticImage");
    MSHookMessageEx(_ftt_class_CWSplashScreenStaticImage, @selector(initRemoteImageWithDuration:), (IMP)_patched_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$, (IMP *)_orig_ftt_meth_$CWSplashScreenStaticImage$initRemoteImageWithDuration$);
    Class _ftt_class_DSMLinearVideoAdsManager = objc_getClass("DSMLinearVideoAdsManager");
    MSHookMessageEx(_ftt_class_DSMLinearVideoAdsManager, @selector(providerPrePodPromo), (IMP)_patched_ftt_meth_$DSMLinearVideoAdsManager$providerPrePodPromo, NULL);
    MSHookMessageEx(_ftt_class_DSMLinearVideoAdsManager, @selector(enabled), (IMP)_patched_ftt_meth_$DSMLinearVideoAdsManager$enabled, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_GADBannerView = objc_getClass("GADBannerView");
    MSHookMessageEx(_ftt_class_GADBannerView, @selector(slot), (IMP)_patched_ftt_meth_$GADBannerView$slot, NULL);
    Class _ftt_class_PWAppConfiguration = objc_getClass("PWAppConfiguration");
    MSHookMessageEx(_ftt_class_PWAppConfiguration, @selector(isForceUpgradeEnabled), (IMP)_patched_ftt_meth_$PWAppConfiguration$isForceUpgradeEnabled, NULL);
    MSHookMessageEx(_ftt_class_PWAppConfiguration, @selector(isRatingsEnabled), (IMP)_patched_ftt_meth_$PWAppConfiguration$isRatingsEnabled, NULL);
}
