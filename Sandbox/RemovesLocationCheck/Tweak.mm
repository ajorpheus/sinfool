#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$MKStoreManager$isProductTypePurchased$(id self, SEL _cmd, int arg1) {
    return 1;
}

static BOOL _patched_ftt_meth_$NLAccessControlManager$isVIPAccount(id self, SEL _cmd) {
    return 1;
}

static BOOL _patched_ftt_meth_$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MKStoreManager = objc_getClass("MKStoreManager");
    MSHookMessageEx(_ftt_class_MKStoreManager, @selector(isProductTypePurchased:), (IMP)_patched_ftt_meth_$MKStoreManager$isProductTypePurchased$, NULL);
    Class _ftt_class_NLAccessControlManager = objc_getClass("NLAccessControlManager");
    MSHookMessageEx(_ftt_class_NLAccessControlManager, @selector(isVIPAccount), (IMP)_patched_ftt_meth_$NLAccessControlManager$isVIPAccount, NULL);
    MSHookMessageEx(_ftt_class_NLAccessControlManager, @selector(isLiveChannelAvailableForCurrentLocation), (IMP)_patched_ftt_meth_$NLAccessControlManager$isLiveChannelAvailableForCurrentLocation, NULL);
}
