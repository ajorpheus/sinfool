#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$Interstitiel$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static bool _patched_ftt_meth_$HZiAdBannerAdapter$isAvailable(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_Interstitiel = objc_getClass("Interstitiel");
    MSHookMessageEx(_ftt_class_Interstitiel, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$Interstitiel$initWithFrame$, NULL);
    Class _ftt_class_HZiAdBannerAdapter = objc_getClass("HZiAdBannerAdapter");
    MSHookMessageEx(_ftt_class_HZiAdBannerAdapter, @selector(isAvailable), (IMP)_patched_ftt_meth_$HZiAdBannerAdapter$isAvailable, NULL);
}
