#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$NCNotificationListClearButton$clearButtonState(id self, SEL _cmd) {
    return 1;
}

static void (*_orig_ftt_meth_$NCNotificationListClearButton$_layoutSubviewsForState$)(id, SEL, long long);
static void _patched_ftt_meth_$NCNotificationListClearButton$_layoutSubviewsForState$(id self, SEL _cmd, long long arg1) {
    arg1 = 0;
    _orig_ftt_meth_$NCNotificationListClearButton$_layoutSubviewsForState$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCNotificationListClearButton = objc_getClass("NCNotificationListClearButton");
    MSHookMessageEx(_ftt_class_NCNotificationListClearButton, @selector(clearButtonState), (IMP)_patched_ftt_meth_$NCNotificationListClearButton$clearButtonState, NULL);
    MSHookMessageEx(_ftt_class_NCNotificationListClearButton, @selector(_layoutSubviewsForState:), (IMP)_patched_ftt_meth_$NCNotificationListClearButton$_layoutSubviewsForState$, (IMP *)_orig_ftt_meth_$NCNotificationListClearButton$_layoutSubviewsForState$);
}
