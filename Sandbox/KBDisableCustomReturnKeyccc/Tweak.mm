#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKeyboardImpl$returnKeyEnabled(id self, SEL _cmd) {
    // Enables Return Key
    return 0;
}

static void (*_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$)(id, SEL, bool, id, int);
static void _patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(id self, SEL _cmd, bool arg1, id arg2, int arg3) {
    // (Arg#1): Highlight Return Text (FALSE=Disables Key), (Arg#2): Custom Text, (Arg#3): Type/Color: 0=stock, 1=blue
    arg1 = 1;
    _orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardImpl = objc_getClass("UIKeyboardImpl");
    MSHookMessageEx(_ftt_class_UIKeyboardImpl, @selector(returnKeyEnabled), (IMP)_patched_ftt_meth_$UIKeyboardImpl$returnKeyEnabled, NULL);
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(setReturnKeyEnabled:withDisplayName:withType:), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$, (IMP *)_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$);
}
