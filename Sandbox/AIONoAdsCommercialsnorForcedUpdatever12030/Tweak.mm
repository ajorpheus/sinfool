#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static id (*_orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$)(id, SEL, id);
static id _patched_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$(id self, SEL _cmd, id arg1) {
    arg1 = NULL;
    return _orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$AWEAsset$adCuePoints(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_AWEVideoViewBottomAdBar = objc_getClass("AWEVideoViewBottomAdBar");
    MSHookMessageEx(_ftt_class_AWEVideoViewBottomAdBar, @selector(initWithCoder:), (IMP)_patched_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$, (IMP *)_orig_ftt_meth_$AWEVideoViewBottomAdBar$initWithCoder$);
    Class _ftt_class_AWEAsset = objc_getClass("AWEAsset");
    MSHookMessageEx(_ftt_class_AWEAsset, @selector(adCuePoints), (IMP)_patched_ftt_meth_$AWEAsset$adCuePoints, NULL);
}
