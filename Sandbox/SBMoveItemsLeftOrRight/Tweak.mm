#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime(id self, SEL _cmd) {
    // •
    return 1;
}

static bool _patched_ftt_meth_$UIStatusBarItem$appearsOnLeft(id self, SEL _cmd) {
    // Appears On Left
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(shouldShowLockStatusBarTime), (IMP)_patched_ftt_meth_$SBLockScreenViewController$shouldShowLockStatusBarTime, NULL);
    Class _ftt_class_UIStatusBarItem = objc_getClass("UIStatusBarItem");
    MSHookMessageEx(_ftt_class_UIStatusBarItem, @selector(appearsOnLeft), (IMP)_patched_ftt_meth_$UIStatusBarItem$appearsOnLeft, NULL);
}
