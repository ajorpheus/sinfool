#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardViewController$shouldShowLockStatusBarTime(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(shouldShowLockStatusBarTime), (IMP)_patched_ftt_meth_$SBDashBoardViewController$shouldShowLockStatusBarTime, NULL);
}
