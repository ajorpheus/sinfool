#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Input BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // Button Color
    arg1 = [UIColor colorWithRed:23/255.0 green:23/255.0 blue:23/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$(id self, SEL _cmd, id arg1) {
    // Button Text Color
    arg1 = [UIColor colorWithRed:37/255.0 green:185/255.0 blue:233/255.0 alpha:255/255.0];
    _orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CalculatorPatchedSwiftClassNamePrimaryDisplayView = objc_getClass("Calculator.PrimaryDisplayView");
    MSHookMessageEx(_ftt_class_CalculatorPatchedSwiftClassNamePrimaryDisplayView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CalculatorPatchedSwiftClassNamePrimaryDisplayView$setBackgroundColor$);
    Class _ftt_class_CalculatorPatchedSwiftClassNameCalculatorKeypadLabel = objc_getClass("Calculator.CalculatorKeypadLabel");
    MSHookMessageEx(_ftt_class_CalculatorPatchedSwiftClassNameCalculatorKeypadLabel, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$, (IMP *)_orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setBackgroundColor$);
    MSHookMessageEx(_ftt_class_CalculatorPatchedSwiftClassNameCalculatorKeypadLabel, @selector(setTextColor:), (IMP)_patched_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$, (IMP *)_orig_ftt_meth_$CalculatorPatchedSwiftClassNameCalculatorKeypadLabel$setTextColor$);
}
