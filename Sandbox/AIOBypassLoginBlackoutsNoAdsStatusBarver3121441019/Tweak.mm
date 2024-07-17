#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$MKStoreManager$isProductTypePurchased$(id self, SEL _cmd, int arg1) {
    // Bypass Login
    return 1;
}

static BOOL _patched_ftt_meth_$NLAccessControlManager$isVIPAccount(id self, SEL _cmd) {
    // Bypass Login
    return 1;
}

static BOOL _patched_ftt_meth_$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation(id self, SEL _cmd) {
    // Remove Location Check
    return 1;
}

static void (*_orig_ftt_meth_$NLNBAGeoManager$geoCheckRequestDone$)(id, SEL, id);
static void _patched_ftt_meth_$NLNBAGeoManager$geoCheckRequestDone$(id self, SEL _cmd, id arg1) {
    // Remove Geo Block
    arg1 = NULL;
    _orig_ftt_meth_$NLNBAGeoManager$geoCheckRequestDone$(self, _cmd, arg1);
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    // Removes Banner Ads
    return NULL;
}

static id _patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(id self, SEL _cmd, float arg1, int arg2) {
    // Status Bar Foreground: (NULL)=none, pass-through=yes
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MKStoreManager = objc_getClass("MKStoreManager");
    MSHookMessageEx(_ftt_class_MKStoreManager, @selector(isProductTypePurchased:), (IMP)_patched_ftt_meth_$MKStoreManager$isProductTypePurchased$, NULL);
    Class _ftt_class_NLAccessControlManager = objc_getClass("NLAccessControlManager");
    MSHookMessageEx(_ftt_class_NLAccessControlManager, @selector(isVIPAccount), (IMP)_patched_ftt_meth_$NLAccessControlManager$isVIPAccount, NULL);
    MSHookMessageEx(_ftt_class_NLAccessControlManager, @selector(isLiveChannelAvailableForCurrentLocation), (IMP)_patched_ftt_meth_$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation, NULL);
    Class _ftt_class_NLNBAGeoManager = objc_getClass("NLNBAGeoManager");
    MSHookMessageEx(_ftt_class_NLNBAGeoManager, @selector(geoCheckRequestDone:), (IMP)_patched_ftt_meth_$NLNBAGeoManager$geoCheckRequestDone$, (IMP *)_orig_ftt_meth_$NLNBAGeoManager$geoCheckRequestDone$);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
    Class _ftt_class_UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:), (IMP)_patched_ftt_meth_$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$, NULL);
}
