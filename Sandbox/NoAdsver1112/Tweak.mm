#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$PrerollAd$adId(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$NFLNowFeedsViewController$onloaderAds(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_PrerollAd = objc_getClass("PrerollAd");
    MSHookMessageEx(_ftt_class_PrerollAd, @selector(adId), (IMP)_patched_ftt_meth_$PrerollAd$adId, NULL);
    Class _ftt_class_NFLNowFeedsViewController = objc_getClass("NFLNowFeedsViewController");
    MSHookMessageEx(_ftt_class_NFLNowFeedsViewController, @selector(onloaderAds), (IMP)_patched_ftt_meth_$NFLNowFeedsViewController$onloaderAds, NULL);
}
