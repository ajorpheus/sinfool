#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBIcon$getIconImage$(id self, SEL _cmd, int arg1) {
    return NULL;
}

static void (*_orig_ftt_meth_$SBClockApplicationIconImageView$setIcon$location$animated$)(id, SEL, id, int, bool);
static void _patched_ftt_meth_$SBClockApplicationIconImageView$setIcon$location$animated$(id self, SEL _cmd, id arg1, int arg2, bool arg3) {
    arg1 = NULL;
    _orig_ftt_meth_$SBClockApplicationIconImageView$setIcon$location$animated$(self, _cmd, arg1, arg2, arg3);
}

static void (*_orig_ftt_meth_$SBClockApplicationIconImageView$_setAnimating$)(id, SEL, bool);
static void _patched_ftt_meth_$SBClockApplicationIconImageView$_setAnimating$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBClockApplicationIconImageView$_setAnimating$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIcon = objc_getClass("SBIcon");
    MSHookMessageEx(_ftt_class_SBIcon, @selector(getIconImage:), (IMP)_patched_ftt_meth_$SBIcon$getIconImage$, NULL);
    Class _ftt_class_SBClockApplicationIconImageView = objc_getClass("SBClockApplicationIconImageView");
    MSHookMessageEx(_ftt_class_SBClockApplicationIconImageView, @selector(setIcon:location:animated:), (IMP)_patched_ftt_meth_$SBClockApplicationIconImageView$setIcon$location$animated$, (IMP *)_orig_ftt_meth_$SBClockApplicationIconImageView$setIcon$location$animated$);
    MSHookMessageEx(_ftt_class_SBClockApplicationIconImageView, @selector(_setAnimating:), (IMP)_patched_ftt_meth_$SBClockApplicationIconImageView$_setAnimating$, (IMP *)_orig_ftt_meth_$SBClockApplicationIconImageView$_setAnimating$);
}
