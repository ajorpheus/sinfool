#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBDashBoardViewController$_setFakeStatusBarEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBDashBoardViewController$_setFakeStatusBarEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBDashBoardViewController$_setFakeStatusBarEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(_setFakeStatusBarEnabled:), (IMP)_patched_ftt_meth_$SBDashBoardViewController$_setFakeStatusBarEnabled$, (IMP *)_orig_ftt_meth_$SBDashBoardViewController$_setFakeStatusBarEnabled$);
}
