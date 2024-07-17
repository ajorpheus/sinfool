#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UINavigationButton$_wantsAccessibilityButtonShapes(id self, SEL _cmd) {
    // Rounded
    return 0;
}

static bool _patched_ftt_meth_$UINavigationItemButtonView$_wantsAccessibilityButtonShapes(id self, SEL _cmd) {
    // Arrow Style
    return 0;
}

static void (*_orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UINavigationButton = objc_getClass("UINavigationButton");
    MSHookMessageEx(_ftt_class_UINavigationButton, @selector(_wantsAccessibilityButtonShapes), (IMP)_patched_ftt_meth_$UINavigationButton$_wantsAccessibilityButtonShapes, NULL);
    Class _ftt_class_UINavigationItemButtonView = objc_getClass("UINavigationItemButtonView");
    MSHookMessageEx(_ftt_class_UINavigationItemButtonView, @selector(_wantsAccessibilityButtonShapes), (IMP)_patched_ftt_meth_$UINavigationItemButtonView$_wantsAccessibilityButtonShapes, NULL);
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(_setWantsUnderlineForAccessibilityButtonShapesEnabled:), (IMP)_patched_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$, (IMP *)_orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$);
}
