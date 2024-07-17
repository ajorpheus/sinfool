#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardLayoutStar$isLongPressedKey$(id self, SEL _cmd, id arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(isLongPressedKey:), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$isLongPressedKey$, NULL);
}
