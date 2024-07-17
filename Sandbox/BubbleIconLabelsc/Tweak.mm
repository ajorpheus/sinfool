#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBMutableIconLabelImageParameters$setFocusHighlightColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBMutableIconLabelImageParameters$setFocusHighlightColor$(id self, SEL _cmd, id arg1) {
    // Background
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:63/255.0];
    _orig_ftt_meth_$SBMutableIconLabelImageParameters$setFocusHighlightColor$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBMutableIconLabelImageParameters$setTextColor$)(id, SEL, id);
static void _patched_ftt_meth_$SBMutableIconLabelImageParameters$setTextColor$(id self, SEL _cmd, id arg1) {
    // Label
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _orig_ftt_meth_$SBMutableIconLabelImageParameters$setTextColor$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBMutableIconLabelImageParameters = objc_getClass("SBMutableIconLabelImageParameters");
    MSHookMessageEx(_ftt_class_SBMutableIconLabelImageParameters, @selector(setFocusHighlightColor:), (IMP)_patched_ftt_meth_$SBMutableIconLabelImageParameters$setFocusHighlightColor$, (IMP *)_orig_ftt_meth_$SBMutableIconLabelImageParameters$setFocusHighlightColor$);
    MSHookMessageEx(_ftt_class_SBMutableIconLabelImageParameters, @selector(setTextColor:), (IMP)_patched_ftt_meth_$SBMutableIconLabelImageParameters$setTextColor$, (IMP *)_orig_ftt_meth_$SBMutableIconLabelImageParameters$setTextColor$);
}
