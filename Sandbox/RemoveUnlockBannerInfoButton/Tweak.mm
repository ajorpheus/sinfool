#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$MBPurchaseManager$unlockIsPurchased(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MBPurchaseManager = objc_getClass("MBPurchaseManager");
    MSHookMessageEx(_ftt_class_MBPurchaseManager, @selector(unlockIsPurchased), (IMP)_patched_ftt_meth_$MBPurchaseManager$unlockIsPurchased, NULL);
}
