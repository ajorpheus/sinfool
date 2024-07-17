#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UILabel = objc_getClass("UILabel");
    MSHookMessageEx(_ftt_class_UILabel, @selector(_setWantsUnderlineForAccessibilityButtonShapesEnabled:), (IMP)_patched_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$, (IMP *)_orig_ftt_meth_$UILabel$_setWantsUnderlineForAccessibilityButtonShapesEnabled$);
}
