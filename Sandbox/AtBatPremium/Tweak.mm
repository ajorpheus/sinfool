#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SponsorHelper$shouldOfferCarrierAppSponsor$(id self, SEL _cmd, id arg1) {
    return 1;
}

static BOOL _patched_ftt_meth_$ABInAppPurchaseHelper$hasCarrierPlatformAccess(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$InAppPurchaseConfig$shouldUnlockAllFeatures(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SponsorHelper = objc_getClass("SponsorHelper");
    MSHookMessageEx(_ftt_class_SponsorHelper, @selector(shouldOfferCarrierAppSponsor:), (IMP)_patched_ftt_meth_$SponsorHelper$shouldOfferCarrierAppSponsor$, NULL);
    Class _ftt_class_ABInAppPurchaseHelper = objc_getClass("ABInAppPurchaseHelper");
    MSHookMessageEx(_ftt_class_ABInAppPurchaseHelper, @selector(hasCarrierPlatformAccess), (IMP)_patched_ftt_meth_$ABInAppPurchaseHelper$hasCarrierPlatformAccess, NULL);
    Class _ftt_class_InAppPurchaseConfig = objc_getClass("InAppPurchaseConfig");
    MSHookMessageEx(_ftt_class_InAppPurchaseConfig, @selector(shouldUnlockAllFeatures), (IMP)_patched_ftt_meth_$InAppPurchaseConfig$shouldUnlockAllFeatures, NULL);
}
