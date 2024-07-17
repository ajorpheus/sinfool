#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$PSUISoftwareUpdateController$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PSUISoftwareUpdateController = objc_getClass("PSUISoftwareUpdateController");
    MSHookMessageEx(_ftt_class_PSUISoftwareUpdateController, @selector(init), (IMP)_patched_ftt_meth_$PSUISoftwareUpdateController$init, NULL);
}
