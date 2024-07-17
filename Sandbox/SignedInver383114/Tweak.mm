#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$RHAccountController$signedIn(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHRadioPlayableItemsProvider$supportsSkipBackwards(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHRadioPlayableItemsProvider$supportsUserScrubbing(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$LocalyticsDatapointHelper$isDeviceJailbroken(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$RHAccountController$upgradeRequired(id self, SEL _cmd) {
    return 0;
}

static BOOL _patched_ftt_meth_$RHAccountController$hasStreamEntitlements(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHAccountController$hasRadioEntitlements(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHAccountController$hasDownloadEntitlements(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHRadioPlayContext$supportsSkipBackwards(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHRadioPlayContext$supportsUserScrubbing(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$RHAccountController$hasDownloadFavoriteEntitlements(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$CRAppRater$rateMeAlert(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_RHAccountController = objc_getClass("RHAccountController");
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(signedIn), (IMP)_patched_ftt_meth_$RHAccountController$signedIn, NULL);
    Class _ftt_class_RHRadioPlayableItemsProvider = objc_getClass("RHRadioPlayableItemsProvider");
    MSHookMessageEx(_ftt_class_RHRadioPlayableItemsProvider, @selector(supportsSkipBackwards), (IMP)_patched_ftt_meth_$RHRadioPlayableItemsProvider$supportsSkipBackwards, NULL);
    MSHookMessageEx(_ftt_class_RHRadioPlayableItemsProvider, @selector(supportsUserScrubbing), (IMP)_patched_ftt_meth_$RHRadioPlayableItemsProvider$supportsUserScrubbing, NULL);
    Class _ftt_class_LocalyticsDatapointHelper = objc_getClass("LocalyticsDatapointHelper");
    MSHookMessageEx(_ftt_class_LocalyticsDatapointHelper, @selector(isDeviceJailbroken), (IMP)_patched_ftt_meth_$LocalyticsDatapointHelper$isDeviceJailbroken, NULL);
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(upgradeRequired), (IMP)_patched_ftt_meth_$RHAccountController$upgradeRequired, NULL);
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(hasStreamEntitlements), (IMP)_patched_ftt_meth_$RHAccountController$hasStreamEntitlements, NULL);
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(hasRadioEntitlements), (IMP)_patched_ftt_meth_$RHAccountController$hasRadioEntitlements, NULL);
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(hasDownloadEntitlements), (IMP)_patched_ftt_meth_$RHAccountController$hasDownloadEntitlements, NULL);
    Class _ftt_class_RHRadioPlayContext = objc_getClass("RHRadioPlayContext");
    MSHookMessageEx(_ftt_class_RHRadioPlayContext, @selector(supportsSkipBackwards), (IMP)_patched_ftt_meth_$RHRadioPlayContext$supportsSkipBackwards, NULL);
    MSHookMessageEx(_ftt_class_RHRadioPlayContext, @selector(supportsUserScrubbing), (IMP)_patched_ftt_meth_$RHRadioPlayContext$supportsUserScrubbing, NULL);
    MSHookMessageEx(_ftt_class_RHAccountController, @selector(hasDownloadFavoriteEntitlements), (IMP)_patched_ftt_meth_$RHAccountController$hasDownloadFavoriteEntitlements, NULL);
    Class _ftt_class_CRAppRater = objc_getClass("CRAppRater");
    MSHookMessageEx(_ftt_class_CRAppRater, @selector(rateMeAlert), (IMP)_patched_ftt_meth_$CRAppRater$rateMeAlert, NULL);
}
