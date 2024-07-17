#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SoftwareUpdatePrefController$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SoftwareUpdatePrefController = objc_getClass("SoftwareUpdatePrefController");
    MSHookMessageEx(_ftt_class_SoftwareUpdatePrefController, @selector(init), (IMP)_patched_ftt_meth_$SoftwareUpdatePrefController$init, NULL);
}
