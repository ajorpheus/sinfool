#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$MTVConfig$getAds(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$MTVTVESubscriber$isAuthorized(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$MTVTVESubscriber$isAuthenticated(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$MTVHomeAdView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static id _patched_ftt_meth_$MTVShowAdView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static id _patched_ftt_meth_$MTVBrowseAdView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static id _patched_ftt_meth_$MTVOnTvTileAdView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static bool _patched_ftt_meth_$VMNPlayer$spinnerEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MTVConfig = objc_getClass("MTVConfig");
    MSHookMessageEx(_ftt_class_MTVConfig, @selector(getAds), (IMP)_patched_ftt_meth_$MTVConfig$getAds, NULL);
    Class _ftt_class_MTVTVESubscriber = objc_getClass("MTVTVESubscriber");
    MSHookMessageEx(_ftt_class_MTVTVESubscriber, @selector(isAuthorized), (IMP)_patched_ftt_meth_$MTVTVESubscriber$isAuthorized, NULL);
    MSHookMessageEx(_ftt_class_MTVTVESubscriber, @selector(isAuthenticated), (IMP)_patched_ftt_meth_$MTVTVESubscriber$isAuthenticated, NULL);
    Class _ftt_class_MTVHomeAdView = objc_getClass("MTVHomeAdView");
    MSHookMessageEx(_ftt_class_MTVHomeAdView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$MTVHomeAdView$initWithFrame$, NULL);
    Class _ftt_class_MTVShowAdView = objc_getClass("MTVShowAdView");
    MSHookMessageEx(_ftt_class_MTVShowAdView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$MTVShowAdView$initWithFrame$, NULL);
    Class _ftt_class_MTVBrowseAdView = objc_getClass("MTVBrowseAdView");
    MSHookMessageEx(_ftt_class_MTVBrowseAdView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$MTVBrowseAdView$initWithFrame$, NULL);
    Class _ftt_class_MTVOnTvTileAdView = objc_getClass("MTVOnTvTileAdView");
    MSHookMessageEx(_ftt_class_MTVOnTvTileAdView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$MTVOnTvTileAdView$initWithFrame$, NULL);
    Class _ftt_class_VMNPlayer = objc_getClass("VMNPlayer");
    MSHookMessageEx(_ftt_class_VMNPlayer, @selector(spinnerEnabled), (IMP)_patched_ftt_meth_$VMNPlayer$spinnerEnabled, NULL);
}
