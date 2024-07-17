#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDockView$setBackgroundAlpha$)(id, SEL, float);
static void _patched_ftt_meth_$SBDockView$setBackgroundAlpha$(id self, SEL _cmd, float arg1) {
    arg1 = 0;
    _orig_ftt_meth_$SBDockView$setBackgroundAlpha$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDockView = objc_getClass("SBDockView");
    MSHookMessageEx(_ftt_class_SBDockView, @selector(setBackgroundAlpha:), (IMP)_patched_ftt_meth_$SBDockView$setBackgroundAlpha$, (IMP *)_orig_ftt_meth_$SBDockView$setBackgroundAlpha$);
}
