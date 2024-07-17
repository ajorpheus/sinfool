#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$DCMainNavigationViewController$bannerAdLoaded(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_DCMainNavigationViewController = objc_getClass("DCMainNavigationViewController");
    MSHookMessageEx(_ftt_class_DCMainNavigationViewController, @selector(bannerAdLoaded), (IMP)_patched_ftt_meth_$DCMainNavigationViewController$bannerAdLoaded, NULL);
}
