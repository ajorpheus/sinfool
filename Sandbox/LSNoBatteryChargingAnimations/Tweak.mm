#import <UIKit/UIKit.h>

#include <substrate.h>

static void _patched_ftt_meth_$SBDashBoardViewController$_transitionChargingViewToVisible$showBattery$animated$(id self, SEL _cmd, bool arg1, bool arg2, bool arg3) {
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardViewController = objc_getClass("SBDashBoardViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardViewController, @selector(_transitionChargingViewToVisible:showBattery:animated:), (IMP)_patched_ftt_meth_$SBDashBoardViewController$_transitionChargingViewToVisible$showBattery$animated$, NULL);
}
