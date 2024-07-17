#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$)(id, SEL, id, bool, bool, id);
static void _patched_ftt_meth_$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$(id self, SEL _cmd, id arg1, bool arg2, bool arg3, id arg4) {
    arg3 = 0;
    _orig_ftt_meth_$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$(self, _cmd, arg1, arg2, arg3, arg4);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(setKeyboardInputMode:userInitiated:updateIndicator:executionContext:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$, (IMP *)_orig_ftt_meth_$UIKeyboardImpl$setKeyboardInputMode$userInitiated$updateIndicator$executionContext$);
}
