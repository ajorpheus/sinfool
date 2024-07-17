#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIApplication$_setClassicMode$)(id, SEL, long long);
static void _patched_ftt_meth_$UIApplication$_setClassicMode$(id self, SEL _cmd, long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$UIApplication$_setClassicMode$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIApplication = objc_getClass("UIApplication");
    MSHookMessageEx(_ftt_class_UIApplication, @selector(_setClassicMode:), (IMP)_patched_ftt_meth_$UIApplication$_setClassicMode$, (IMP *)_orig_ftt_meth_$UIApplication$_setClassicMode$);
}
