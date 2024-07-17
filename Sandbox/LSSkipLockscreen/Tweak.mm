#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLockScreenViewController$shouldAutoUnlockForSource$(id self, SEL _cmd, int arg1) {
    return 1;
}

static bool _patched_ftt_meth_$SBLockScreenDefaults$useDashBoard(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLockScreenViewController = objc_getClass("SBLockScreenViewController");
    MSHookMessageEx(_ftt_class_SBLockScreenViewController, @selector(shouldAutoUnlockForSource:), (IMP)_patched_ftt_meth_$SBLockScreenViewController$shouldAutoUnlockForSource$, NULL);
    Class _ftt_class_SBLockScreenDefaults = objc_getClass("SBLockScreenDefaults");
    MSHookMessageEx(_ftt_class_SBLockScreenDefaults, @selector(useDashBoard), (IMP)_patched_ftt_meth_$SBLockScreenDefaults$useDashBoard, NULL);
}
