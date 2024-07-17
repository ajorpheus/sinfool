#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDashBoardView$setForceDateViewCentered$)(id, SEL, bool);
static void _patched_ftt_meth_$SBDashBoardView$setForceDateViewCentered$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBDashBoardView$setForceDateViewCentered$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBDashBoardView$forceDateViewCentered(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardView = objc_getClass("SBDashBoardView");
    MSHookMessageEx(_ftt_class_SBDashBoardView, @selector(setForceDateViewCentered:), (IMP)_patched_ftt_meth_$SBDashBoardView$setForceDateViewCentered$, (IMP *)_orig_ftt_meth_$SBDashBoardView$setForceDateViewCentered$);
    MSHookMessageEx(_ftt_class_SBDashBoardView, @selector(forceDateViewCentered), (IMP)_patched_ftt_meth_$SBDashBoardView$forceDateViewCentered, NULL);
}
