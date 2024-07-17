#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBUserNotificationAlert$setDefaultButtonTitle$)(id, SEL, id);
static void _patched_ftt_meth_$SBUserNotificationAlert$setDefaultButtonTitle$(id self, SEL _cmd, id arg1) {
    // Default Button Title
    arg1 = @"Okeydoke ";
    _orig_ftt_meth_$SBUserNotificationAlert$setDefaultButtonTitle$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUserNotificationAlert = objc_getClass("SBUserNotificationAlert");
    MSHookMessageEx(_ftt_class_SBUserNotificationAlert, @selector(setDefaultButtonTitle:), (IMP)_patched_ftt_meth_$SBUserNotificationAlert$setDefaultButtonTitle$, (IMP *)_orig_ftt_meth_$SBUserNotificationAlert$setDefaultButtonTitle$);
}
