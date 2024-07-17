#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$)(id, SEL, double);
static void _patched_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$(id self, SEL _cmd, double arg1) {
    // ...set Speed (lower #=faster)
    arg1 = 0.09;
    _orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(touchAutoDeleteTimerWithThreshold:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$);
}
