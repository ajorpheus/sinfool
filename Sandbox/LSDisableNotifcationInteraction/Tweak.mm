#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBDashBoardScrollGestureController$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static bool _patched_ftt_meth_$NCNotificationShortLookViewController$_shouldAddHintTextToLookView(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$NCNotificationPriorityListViewController$shouldAddHintTextForNotificationViewController$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDashBoardScrollGestureController = objc_getClass("SBDashBoardScrollGestureController");
    MSHookMessageEx(_ftt_class_SBDashBoardScrollGestureController, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$SBDashBoardScrollGestureController$gestureRecognizerShouldBegin$, NULL);
    Class _ftt_class_NCNotificationShortLookViewController = objc_getClass("NCNotificationShortLookViewController");
    MSHookMessageEx(_ftt_class_NCNotificationShortLookViewController, @selector(_shouldAddHintTextToLookView), (IMP)_patched_ftt_meth_$NCNotificationShortLookViewController$_shouldAddHintTextToLookView, NULL);
    Class _ftt_class_NCNotificationPriorityListViewController = objc_getClass("NCNotificationPriorityListViewController");
    MSHookMessageEx(_ftt_class_NCNotificationPriorityListViewController, @selector(shouldAddHintTextForNotificationViewController:), (IMP)_patched_ftt_meth_$NCNotificationPriorityListViewController$shouldAddHintTextForNotificationViewController$, NULL);
}
