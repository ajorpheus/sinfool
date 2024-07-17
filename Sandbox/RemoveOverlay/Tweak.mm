#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GMSCopyrightOverlay$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GMSCopyrightOverlay = objc_getClass("GMSCopyrightOverlay");
    MSHookMessageEx(_ftt_class_GMSCopyrightOverlay, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$GMSCopyrightOverlay$initWithFrame$, NULL);
}
