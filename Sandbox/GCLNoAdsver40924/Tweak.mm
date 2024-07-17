#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$NHLAccessControlManager$isRogersUser(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$NHLAccessControlManager$isLocalGclSubscription(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$NHLAccessControlManager$isGclSubscription(id self, SEL _cmd) {
    return 1;
}

static unsigned int _patched_ftt_meth_$FWAd$adId(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$GADAdFetcher$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NHLAccessControlManager = objc_getClass("NHLAccessControlManager");
    MSHookMessageEx(_ftt_class_NHLAccessControlManager, @selector(isRogersUser), (IMP)_patched_ftt_meth_$NHLAccessControlManager$isRogersUser, NULL);
    MSHookMessageEx(_ftt_class_NHLAccessControlManager, @selector(isLocalGclSubscription), (IMP)_patched_ftt_meth_$NHLAccessControlManager$isLocalGclSubscription, NULL);
    MSHookMessageEx(_ftt_class_NHLAccessControlManager, @selector(isGclSubscription), (IMP)_patched_ftt_meth_$NHLAccessControlManager$isGclSubscription, NULL);
    Class _ftt_class_FWAd = objc_getClass("FWAd");
    MSHookMessageEx(_ftt_class_FWAd, @selector(adId), (IMP)_patched_ftt_meth_$FWAd$adId, NULL);
    Class _ftt_class_GADAdFetcher = objc_getClass("GADAdFetcher");
    MSHookMessageEx(_ftt_class_GADAdFetcher, @selector(init), (IMP)_patched_ftt_meth_$GADAdFetcher$init, NULL);
}
