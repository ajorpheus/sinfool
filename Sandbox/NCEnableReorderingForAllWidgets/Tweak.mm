#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBNotificationCenterLayoutViewController$todayViewSettingsViewController$canReorderInterfaceItem$(id self, SEL _cmd, id arg1, id arg2) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationCenterLayoutViewController = objc_getClass("SBNotificationCenterLayoutViewController");
    MSHookMessageEx(_ftt_class_SBNotificationCenterLayoutViewController, @selector(todayViewSettingsViewController:canReorderInterfaceItem:), (IMP)_patched_ftt_meth_$SBNotificationCenterLayoutViewController$todayViewSettingsViewController$canReorderInterfaceItem$, NULL);
}
