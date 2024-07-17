#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$MYWAppDelegate$isFreeAppUpgraded(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MYWAppDelegate = objc_getClass("MYWAppDelegate");
    MSHookMessageEx(_ftt_class_MYWAppDelegate, @selector(isFreeAppUpgraded), (IMP)_patched_ftt_meth_$MYWAppDelegate$isFreeAppUpgraded, NULL);
}
