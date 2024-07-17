#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardLayoutStar$edgeSwipeGestureEnabled(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(edgeSwipeGestureEnabled), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$edgeSwipeGestureEnabled, NULL);
}
