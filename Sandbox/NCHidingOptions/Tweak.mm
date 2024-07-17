#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$(id self, SEL _cmd, CGRect arg1, long long arg2) {
    // Top & Bottom Separators
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBNotificationSeparatorView = objc_getClass("SBNotificationSeparatorView");
    MSHookMessageEx(_ftt_class_SBNotificationSeparatorView, @selector(initWithFrame:mode:), (IMP)_patched_ftt_meth_$SBNotificationSeparatorView$initWithFrame$mode$, NULL);
}
