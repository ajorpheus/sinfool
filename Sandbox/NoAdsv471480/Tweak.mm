#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned char _patched_ftt_meth_$AdControl2$displayAd$(id self, SEL _cmd, unsigned char arg1) {
    return 0;
}

static id _patched_ftt_meth_$MPAdView$adManager(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AdControl2 = objc_getClass("AdControl2");
    MSHookMessageEx(_ftt_class_AdControl2, @selector(displayAd:), (IMP)_patched_ftt_meth_$AdControl2$displayAd$, NULL);
    Class _ftt_class_MPAdView = objc_getClass("MPAdView");
    MSHookMessageEx(_ftt_class_MPAdView, @selector(adManager), (IMP)_patched_ftt_meth_$MPAdView$adManager, NULL);
}
