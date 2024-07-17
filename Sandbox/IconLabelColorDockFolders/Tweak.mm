#import <UIKit/UIKit.h>

#include <substrate.h>

static id (*_orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$)(id, SEL, long long, id);
static id _patched_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$(id self, SEL _cmd, long long arg1, id arg2) {
    // Set Color... (Arg#2)
    arg2 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    return _orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconView = objc_getClass("SBIconView");
    MSHookMessageEx(_ftt_class_SBIconView, @selector(_legibilitySettingsWithStyle:primaryColor:), (IMP)_patched_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$, (IMP *)_orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$);
    Class _ftt_class_SBMutableIconLabelImageParameters = objc_getClass("SBMutableIconLabelImageParameters");
    MSHookMessageEx(_ftt_class_SBMutableIconLabelImageParameters, @selector(setAccessibilityIncreaseContrastEnabled:), (IMP)_patched_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$, (IMP *)_orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$);
}
