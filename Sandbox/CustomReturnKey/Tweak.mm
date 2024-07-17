#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$)(id, SEL, bool, id, int);
static void _patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(id self, SEL _cmd, bool arg1, id arg2, int arg3) {
    // Enable Button: (Arg#1)=T or F; Custom Text: (Arg#2); Button Type: (Arg#3) Stock=pass-through, Blue=1
    arg2 = @"®";
    arg1 = 1;
    _orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$(self, _cmd, arg1, arg2, arg3);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKeyboardLayoutStar = objc_getClass("UIKeyboardLayoutStar");
    MSHookMessageEx(_ftt_class_UIKeyboardLayoutStar, @selector(setReturnKeyEnabled:withDisplayName:withType:), (IMP)_patched_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$, (IMP *)_orig_ftt_meth_$UIKeyboardLayoutStar$setReturnKeyEnabled$withDisplayName$withType$);
}
