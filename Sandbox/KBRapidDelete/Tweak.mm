#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$adjustForPartialCompletion$)(id, SEL, double, bool);
static void _patched_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$adjustForPartialCompletion$(id self, SEL _cmd, double arg1, bool arg2) {
    // ...set Speed (lower #=faster)
    arg1 = 0.04;
    _orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$adjustForPartialCompletion$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(touchAutoDeleteTimerWithThreshold:adjustForPartialCompletion:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$adjustForPartialCompletion$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$touchAutoDeleteTimerWithThreshold$adjustForPartialCompletion$);
}
