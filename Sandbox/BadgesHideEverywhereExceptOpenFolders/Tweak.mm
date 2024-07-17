#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBIconBadgeView$configureForIcon$location$highlighted$)(id, SEL, id, int, bool);
static void _patched_ftt_meth_$SBIconBadgeView$configureForIcon$location$highlighted$(id self, SEL _cmd, id arg1, int arg2, bool arg3) {
    arg2 = 1;
    _orig_ftt_meth_$SBIconBadgeView$configureForIcon$location$highlighted$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconBadgeView = objc_getClass("SBIconBadgeView");
    MSHookMessageEx(_ftt_class_SBIconBadgeView, @selector(configureForIcon:location:highlighted:), (IMP)_patched_ftt_meth_$SBIconBadgeView$configureForIcon$location$highlighted$, (IMP *)_orig_ftt_meth_$SBIconBadgeView$configureForIcon$location$highlighted$);
}
