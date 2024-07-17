#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$MTVConfig$getAds(id self, SEL _cmd) {
    return NULL;
}

static BOOL _patched_ftt_meth_$VMNFreeWheelComponent$shouldPlayPreroll(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$(id self, SEL _cmd, id arg1, id arg2, int arg3) {
    return 0;
}

static BOOL _patched_ftt_meth_$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$(id self, SEL _cmd, id arg1, id arg2, int arg3) {
    return 0;
}

static BOOL _patched_ftt_meth_$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$(id self, SEL _cmd, id arg1, id arg2, int arg3) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MTVConfig = objc_getClass("MTVConfig");
    MSHookMessageEx(_ftt_class_MTVConfig, @selector(getAds), (IMP)_patched_ftt_meth_$MTVConfig$getAds, NULL);
    Class _ftt_class_VMNFreeWheelComponent = objc_getClass("VMNFreeWheelComponent");
    MSHookMessageEx(_ftt_class_VMNFreeWheelComponent, @selector(shouldPlayPreroll), (IMP)_patched_ftt_meth_$VMNFreeWheelComponent$shouldPlayPreroll, NULL);
    Class _ftt_class_MTVHomeBigAdView = objc_getClass("MTVHomeBigAdView");
    MSHookMessageEx(_ftt_class_MTVHomeBigAdView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)_patched_ftt_meth_$MTVHomeBigAdView$webView$shouldStartLoadWithRequest$navigationType$, NULL);
    Class _ftt_class_MTVBrowseAdTileView = objc_getClass("MTVBrowseAdTileView");
    MSHookMessageEx(_ftt_class_MTVBrowseAdTileView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)_patched_ftt_meth_$MTVBrowseAdTileView$webView$shouldStartLoadWithRequest$navigationType$, NULL);
    Class _ftt_class_MTVOnTvTileAdView = objc_getClass("MTVOnTvTileAdView");
    MSHookMessageEx(_ftt_class_MTVOnTvTileAdView, @selector(webView:shouldStartLoadWithRequest:navigationType:), (IMP)_patched_ftt_meth_$MTVOnTvTileAdView$webView$shouldStartLoadWithRequest$navigationType$, NULL);
}
