#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardLayoutStar$keyHasAccentedVariants$(id self, SEL _cmd, id arg1) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(keyHasAccentedVariants:), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$keyHasAccentedVariants$, NULL);
}
