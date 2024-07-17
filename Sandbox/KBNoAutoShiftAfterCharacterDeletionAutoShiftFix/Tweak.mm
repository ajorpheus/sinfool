#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardImpl$shouldEnableShiftForDeletedCharacter$(id self, SEL _cmd, unsigned int arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(shouldEnableShiftForDeletedCharacter:), (IMP)_patched_ftt_meth_$UIKeyboardImpl$shouldEnableShiftForDeletedCharacter$, NULL);
}
