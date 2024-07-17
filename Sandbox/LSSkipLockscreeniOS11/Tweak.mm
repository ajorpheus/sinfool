#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardViewController$shouldAutoUnlockForSource$(id self, SEL _cmd, int arg1) {
    return 1;
}

static bool _patched_ftt_meth_$SBNCScreenController$canTurnOnScreenForNotificationRequest$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(shouldAutoUnlockForSource:), (IMP)_patched_ftt_meth_$SBDashBoardViewController$shouldAutoUnlockForSource$, NULL);
    Class _ftt_class_SBNCScreenController = objc_getClass("SBNCScreenController");
    MSHookMessageEx(_ftt_class_SBNCScreenController, @selector(canTurnOnScreenForNotificationRequest:), (IMP)_patched_ftt_meth_$SBNCScreenController$canTurnOnScreenForNotificationRequest$, NULL);
}
