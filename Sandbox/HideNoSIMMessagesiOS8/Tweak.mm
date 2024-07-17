#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSIMLockManager$_shouldSuppressAlert(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSIMLockManager = objc_getClass("SBSIMLockManager");
    MSHookMessageEx(_ftt_class_SBSIMLockManager, @selector(_shouldSuppressAlert), (IMP)_patched_ftt_meth_$SBSIMLockManager$_shouldSuppressAlert, NULL);
}
