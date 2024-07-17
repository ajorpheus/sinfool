#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDashBoardAppearance$setBackgroundStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$SBDashBoardAppearance$setBackgroundStyle$(id self, SEL _cmd, long long arg1) {
    // Set Style... (Blur=3, Light Blur=4, Dark Blur=5, Darker Blur=6, Darkest Blur=7)
    arg1 = 4;
    _orig_ftt_meth_$SBDashBoardAppearance$setBackgroundStyle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardAppearance = objc_getClass("SBDashBoardAppearance");
    MSHookMessageEx(_ftt_class_SBDashBoardAppearance, @selector(setBackgroundStyle:), (IMP)_patched_ftt_meth_$SBDashBoardAppearance$setBackgroundStyle$, (IMP *)_orig_ftt_meth_$SBDashBoardAppearance$setBackgroundStyle$);
}
