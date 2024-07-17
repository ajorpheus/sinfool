#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PSUIResetPrefController$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSUIResetPrefController = objc_getClass("PSUIResetPrefController");
    MSHookMessageEx(_ftt_class_PSUIResetPrefController, @selector(init), (IMP)_patched_ftt_meth_$PSUIResetPrefController$init, NULL);
}
