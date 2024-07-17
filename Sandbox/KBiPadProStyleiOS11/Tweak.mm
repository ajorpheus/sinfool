#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKBScreenTraits$isKeyboardMinorEdgeWidth(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBScreenTraits = objc_getClass("UIKBScreenTraits");
    MSHookMessageEx(_ftt_class_UIKBScreenTraits, @selector(isKeyboardMinorEdgeWidth), (IMP)_patched_ftt_meth_$UIKBScreenTraits$isKeyboardMinorEdgeWidth, NULL);
}
