#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBAppStatusBarManager$setStatusBarAlpha$)(id, SEL, double);
static void _patched_ftt_meth_$SBAppStatusBarManager$setStatusBarAlpha$(id self, SEL _cmd, double arg1) {
    // Set Alpha...  Range (0.0-1.0)
    arg1 = 0.5;
    _orig_ftt_meth_$SBAppStatusBarManager$setStatusBarAlpha$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppStatusBarManager = objc_getClass("SBAppStatusBarManager");
    MSHookMessageEx(_ftt_class_SBAppStatusBarManager, @selector(setStatusBarAlpha:), (IMP)_patched_ftt_meth_$SBAppStatusBarManager$setStatusBarAlpha$, (IMP *)_orig_ftt_meth_$SBAppStatusBarManager$setStatusBarAlpha$);
}
