#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$aaAds$enabled(id self, SEL _cmd) {
    // Ads
    return 0;
}

static BOOL _patched_ftt_meth_$aaADPurchase$purchased(id self, SEL _cmd) {
    // Ads
    return 1;
}

static BOOL _patched_ftt_meth_$aaHurricanes$enabled(id self, SEL _cmd) {
    // Hurricanes
    return 1;
}

static BOOL _patched_ftt_meth_$aaHurricaneProPurchase$purchased(id self, SEL _cmd) {
    // Hurricanes
    return 1;
}

static BOOL _patched_ftt_meth_$aaWarnings$enabled(id self, SEL _cmd) {
    // Warnings
    return 1;
}

static BOOL _patched_ftt_meth_$aaWarningsProPurchase$purchased(id self, SEL _cmd) {
    // Warnings
    return 1;
}

static id _patched_ftt_meth_$aaRater$alert(id self, SEL _cmd) {
    // Rate App Reminder
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_aaAds = objc_getClass("aaAds");
    MSHookMessageEx(_ftt_class_aaAds, @selector(enabled), (IMP)_patched_ftt_meth_$aaAds$enabled, NULL);
    Class _ftt_class_aaADPurchase = objc_getClass("aaADPurchase");
    MSHookMessageEx(_ftt_class_aaADPurchase, @selector(purchased), (IMP)_patched_ftt_meth_$aaADPurchase$purchased, NULL);
    Class _ftt_class_aaHurricanes = objc_getClass("aaHurricanes");
    MSHookMessageEx(_ftt_class_aaHurricanes, @selector(enabled), (IMP)_patched_ftt_meth_$aaHurricanes$enabled, NULL);
    Class _ftt_class_aaHurricaneProPurchase = objc_getClass("aaHurricaneProPurchase");
    MSHookMessageEx(_ftt_class_aaHurricaneProPurchase, @selector(purchased), (IMP)_patched_ftt_meth_$aaHurricaneProPurchase$purchased, NULL);
    Class _ftt_class_aaWarnings = objc_getClass("aaWarnings");
    MSHookMessageEx(_ftt_class_aaWarnings, @selector(enabled), (IMP)_patched_ftt_meth_$aaWarnings$enabled, NULL);
    Class _ftt_class_aaWarningsProPurchase = objc_getClass("aaWarningsProPurchase");
    MSHookMessageEx(_ftt_class_aaWarningsProPurchase, @selector(purchased), (IMP)_patched_ftt_meth_$aaWarningsProPurchase$purchased, NULL);
    Class _ftt_class_aaRater = objc_getClass("aaRater");
    MSHookMessageEx(_ftt_class_aaRater, @selector(alert), (IMP)_patched_ftt_meth_$aaRater$alert, NULL);
}
