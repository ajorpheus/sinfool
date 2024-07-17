#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$ResetPrefController$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_ResetPrefController = objc_getClass("ResetPrefController");
    MSHookMessageEx(_ftt_class_ResetPrefController, @selector(init), (IMP)_patched_ftt_meth_$ResetPrefController$init, NULL);
}
