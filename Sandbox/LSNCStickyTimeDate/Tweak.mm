#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardCombinedListViewController$_allowsDateViewOrProudLockScroll(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardCombinedListViewController, @selector(_allowsDateViewOrProudLockScroll), (IMP)_patched_ftt_meth_$SBDashBoardCombinedListViewController$_allowsDateViewOrProudLockScroll, NULL);
}
