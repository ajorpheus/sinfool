#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$)(id, SEL, double);
static void _patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__SFNavigationBarURLButton = objc_getClass("_SFNavigationBarURLButton");
    MSHookMessageEx(_ftt_class__SFNavigationBarURLButton, @selector(setBackgroundAlphaFactor:), (IMP)_patched_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$, (IMP *)_orig_ftt_meth_$_SFNavigationBarURLButton$setBackgroundAlphaFactor$);
}
