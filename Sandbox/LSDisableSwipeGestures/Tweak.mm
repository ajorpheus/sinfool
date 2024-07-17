#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBLockScreenHintManager$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenHintManager = objc_getClass("SBLockScreenHintManager");
    MSHookMessageEx(_ftt_class_SBLockScreenHintManager, @selector(init), (IMP)_patched_ftt_meth_$SBLockScreenHintManager$init, NULL);
}
