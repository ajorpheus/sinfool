#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UITextInputTraits$_setColorsToMatchTintColor$)(id, SEL, id);
static void _patched_ftt_meth_$UITextInputTraits$_setColorsToMatchTintColor$(id self, SEL _cmd, id arg1) {
    // Set Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$UITextInputTraits$_setColorsToMatchTintColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITextInputTraits = objc_getClass("UITextInputTraits");
    MSHookMessageEx(_ftt_class_UITextInputTraits, @selector(_setColorsToMatchTintColor:), (IMP)_patched_ftt_meth_$UITextInputTraits$_setColorsToMatchTintColor$, (IMP *)_orig_ftt_meth_$UITextInputTraits$_setColorsToMatchTintColor$);
}
