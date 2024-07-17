#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIStatusBarBackgroundView$setBackgroundColor$)(id, SEL, id);
static void _patched_ftt_meth_$UIStatusBarBackgroundView$setBackgroundColor$(id self, SEL _cmd, id arg1) {
    // BG Color
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    _orig_ftt_meth_$UIStatusBarBackgroundView$setBackgroundColor$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(id, SEL, id, id, id, bool);
static id _patched_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(id self, SEL _cmd, id arg1, id arg2, id arg3, bool arg4) {
    // (Arg#3): Text Color
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIStatusBarBackgroundView = objc_getClass("UIStatusBarBackgroundView");
    MSHookMessageEx(_ftt_class_UIStatusBarBackgroundView, @selector(setBackgroundColor:), (IMP)_patched_ftt_meth_$UIStatusBarBackgroundView$setBackgroundColor$, (IMP *)_orig_ftt_meth_$UIStatusBarBackgroundView$setBackgroundColor$);
    Class _ftt_class_UIStatusBarNewUIDoubleHeightStyleAttributes = objc_getClass("UIStatusBarNewUIDoubleHeightStyleAttributes");
    MSHookMessageEx(_ftt_class_UIStatusBarNewUIDoubleHeightStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)_patched_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP *)_orig_ftt_meth_$UIStatusBarNewUIDoubleHeightStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);
}
