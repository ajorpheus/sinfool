#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBIconBadgeView$displayingAccessory(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconBadgeView = objc_getClass("SBIconBadgeView");
    MSHookMessageEx(_ftt_class_SBIconBadgeView, @selector(displayingAccessory), (IMP)_patched_ftt_meth_$SBIconBadgeView$displayingAccessory, NULL);
}
