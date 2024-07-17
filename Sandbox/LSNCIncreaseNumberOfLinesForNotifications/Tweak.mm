#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$NCNotificationShortLookView$setMessageNumberOfLines$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$NCNotificationShortLookView$setMessageNumberOfLines$(id self, SEL _cmd, unsigned long long arg1) {
    // Set # of Lines...
    arg1 = 20;
    _orig_ftt_meth_$NCNotificationShortLookView$setMessageNumberOfLines$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_NCNotificationShortLookView = objc_getClass("NCNotificationShortLookView");
    MSHookMessageEx(_ftt_class_NCNotificationShortLookView, @selector(setMessageNumberOfLines:), (IMP)_patched_ftt_meth_$NCNotificationShortLookView$setMessageNumberOfLines$, (IMP *)_orig_ftt_meth_$NCNotificationShortLookView$setMessageNumberOfLines$);
}
