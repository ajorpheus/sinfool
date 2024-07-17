#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$YCAppDelegate$hasUpgradedToPro(id self, SEL _cmd) {
    // Unit for -(BOOL) hasExtraFeatures
    return 1;
}

static BOOL _patched_ftt_meth_$YCAppDelegate$enableAds(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YCAppDelegate = objc_getClass("YCAppDelegate");
    MSHookMessageEx(_ftt_class_YCAppDelegate, @selector(hasUpgradedToPro), (IMP)_patched_ftt_meth_$YCAppDelegate$hasUpgradedToPro, NULL);
    MSHookMessageEx(_ftt_class_YCAppDelegate, @selector(enableAds), (IMP)_patched_ftt_meth_$YCAppDelegate$enableAds, NULL);
}
