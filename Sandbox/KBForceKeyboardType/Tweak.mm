#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UITextInputTraits$keyboardType(id self, SEL _cmd) {
    // Keyboard Type:	(see suggestions above)
    return 10;
}

static void (*_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$)(id, SEL, bool, id, int);
static void _patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(id self, SEL _cmd, bool arg1, id arg2, int arg3) {
    // Custom Return Key/Type:  (Arg#2): Custom Text (Arg#3): Force Key Type: 0=Standard, 1=Blue, pass-through=Stock
    arg2 = @"®";
    arg3 = 0;
    _orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(keyboardType), (IMP)_patched_ftt_meth_$UITextInputTraits$keyboardType, NULL);
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(setReturnKeyEnabled:withDisplayName:withType:), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$, (IMP *)_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$);
}
