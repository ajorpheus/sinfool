#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$NCNotificationShortLookView$_shouldShowGrabber(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCNotificationShortLookView = objc_getClass("NCNotificationShortLookView");
    MSHookMessageEx(_ftt_class_NCNotificationShortLookView, @selector(_shouldShowGrabber), (IMP)_patched_ftt_meth_$NCNotificationShortLookView$_shouldShowGrabber, NULL);
}
