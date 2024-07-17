#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$)(id, SEL, long long, bool, long long, id, double, id);
static id _patched_ftt_meth_$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$(id self, SEL _cmd, long long arg1, bool arg2, long long arg3, id arg4, double arg5, id arg6) {
    arg1 = -1;
    return _orig_ftt_meth_$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest");
    MSHookMessageEx(_ftt_class_UIStatusBarStyleRequest, @selector(initWithStyle:legacy:legibilityStyle:foregroundColor:foregroundAlpha:overrideHeight:), (IMP)_patched_ftt_meth_$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$, (IMP *)_orig_ftt_meth_$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$);
}
