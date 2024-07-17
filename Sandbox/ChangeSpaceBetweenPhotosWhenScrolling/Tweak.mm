#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$)(id, SEL, double);
static void _patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(id self, SEL _cmd, double arg1) {
    // Set Spacing:  (0=None)
    arg1 = 5;
    _orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setInterpageSpacing:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setInterpageSpacing$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setInterpageSpacing$);
}
