#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$PUOneUpSettings$setAllowParallax$)(id, SEL, bool);
static void _patched_ftt_meth_$PUOneUpSettings$setAllowParallax$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$PUOneUpSettings$setAllowParallax$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$PUOneUpSettings$allowParallax(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpSettings = objc_getClass("PUOneUpSettings");
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(setAllowParallax:), (IMP)_patched_ftt_meth_$PUOneUpSettings$setAllowParallax$, (IMP *)_orig_ftt_meth_$PUOneUpSettings$setAllowParallax$);
    MSHookMessageEx(_ftt_class_PUOneUpSettings, @selector(allowParallax), (IMP)_patched_ftt_meth_$PUOneUpSettings$allowParallax, NULL);
}
