#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SPAppAdsAnalyticsController$showAds(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPAppAdsAnalyticsController = objc_getClass("SPAppAdsAnalyticsController");
    MSHookMessageEx(_ftt_class_SPAppAdsAnalyticsController, @selector(showAds), (IMP)_patched_ftt_meth_$SPAppAdsAnalyticsController$showAds, NULL);
}
