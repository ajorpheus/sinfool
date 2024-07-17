#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBPowerDownController$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBPowerDownController = objc_getClass("SBPowerDownController");
    MSHookMessageEx(_ftt_class_SBPowerDownController, @selector(init), (IMP)_patched_ftt_meth_$SBPowerDownController$init, NULL);
}
