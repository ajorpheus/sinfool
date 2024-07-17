#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardCombinedListViewController$_notificationSectionSettingsHidesSection$(id self, SEL _cmd, id arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardCombinedListViewController = objc_getClass("SBDashBoardCombinedListViewController");
    MSHookMessageEx(_ftt_class_SBDashBoardCombinedListViewController, @selector(_notificationSectionSettingsHidesSection:), (IMP)_patched_ftt_meth_$SBDashBoardCombinedListViewController$_notificationSectionSettingsHidesSection$, NULL);
}
