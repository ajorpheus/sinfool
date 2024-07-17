#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchEtceteraLayoutView = objc_getClass("SBSearchEtceteraLayoutView");
    MSHookMessageEx(_ftt_class_SBSearchEtceteraLayoutView, @selector(_indexOfNotificationsPageView), (IMP)_patched_ftt_meth_$SBSearchEtceteraLayoutView$_indexOfNotificationsPageView, NULL);
}
