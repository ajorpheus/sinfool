#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$AETNVideoSplashScreenViewController$isFinished(id self, SEL _cmd) {
    return 1;
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$AWEAsset$adCuePoints(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_AETNVideoSplashScreenViewController = objc_getClass("AETNVideoSplashScreenViewController");
    MSHookMessageEx(_ftt_class_AETNVideoSplashScreenViewController, @selector(isFinished), (IMP)_patched_ftt_meth_$AETNVideoSplashScreenViewController$isFinished, NULL);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_AWEAsset = objc_getClass("AWEAsset");
    MSHookMessageEx(_ftt_class_AWEAsset, @selector(adCuePoints), (IMP)_patched_ftt_meth_$AWEAsset$adCuePoints, NULL);
}
