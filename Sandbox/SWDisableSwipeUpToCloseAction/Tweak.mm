#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBAppSwitcherController$switcherScroller$isDisplayItemRemovable$(id self, SEL _cmd, id arg1, id arg2) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherController = objc_getClass("SBAppSwitcherController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherController, @selector(switcherScroller:isDisplayItemRemovable:), (IMP)_patched_ftt_meth_$SBAppSwitcherController$switcherScroller$isDisplayItemRemovable$, NULL);
}
