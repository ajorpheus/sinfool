#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardImpl$touchLongPressTimerWithDelay$)(id, SEL, double);
static void _patched_ftt_meth_$UIKeyboardImpl$touchLongPressTimerWithDelay$(id self, SEL _cmd, double arg1) {
    // Set Delay... (0.0-1.0)
    arg1 = 0.25;
    _orig_ftt_meth_$UIKeyboardImpl$touchLongPressTimerWithDelay$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(touchLongPressTimerWithDelay:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$touchLongPressTimerWithDelay$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$touchLongPressTimerWithDelay$);
}
