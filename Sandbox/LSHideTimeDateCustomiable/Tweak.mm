#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDashBoardView$setDateViewPageAlignment$)(id, SEL, long long);
static void _patched_ftt_meth_$SBDashBoardView$setDateViewPageAlignment$(id self, SEL _cmd, long long arg1) {
    // Set where to hide...
    arg1 = -1;
    _orig_ftt_meth_$SBDashBoardView$setDateViewPageAlignment$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardView = objc_getClass("SBDashBoardView");
    MSHookMessageEx(_ftt_class_SBDashBoardView, @selector(setDateViewPageAlignment:), (IMP)_patched_ftt_meth_$SBDashBoardView$setDateViewPageAlignment$, (IMP *)_orig_ftt_meth_$SBDashBoardView$setDateViewPageAlignment$);
}
