#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$OCStoreRegionalDistrictAssistantManager$didPurchaseUnlockEverything(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_OCStoreRegionalDistrictAssistantManager = objc_getClass("OCStoreRegionalDistrictAssistantManager");
    MSHookMessageEx(_ftt_class_OCStoreRegionalDistrictAssistantManager, @selector(didPurchaseUnlockEverything), (IMP)_patched_ftt_meth_$OCStoreRegionalDistrictAssistantManager$didPurchaseUnlockEverything, NULL);
}
