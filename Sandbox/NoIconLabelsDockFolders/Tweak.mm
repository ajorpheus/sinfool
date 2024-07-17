#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBRootFolderView$_setDockOffscreenFraction$)(id, SEL, double);
static void _patched_ftt_meth_$SBRootFolderView$_setDockOffscreenFraction$(id self, SEL _cmd, double arg1) {
    // Reduce Dock Height: (No/Stock=D)
    arg1 = 0.055;
    _orig_ftt_meth_$SBRootFolderView$_setDockOffscreenFraction$(self, _cmd, arg1);
}

static id (*_orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$)(id, SEL, long long, id);
static id _patched_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$(id self, SEL _cmd, long long arg1, id arg2) {
    arg2 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    return _orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$)(id, SEL, bool);
static void _patched_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(id self, SEL _cmd, bool arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBRootFolderView = objc_getClass("SBRootFolderView");
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(_setDockOffscreenFraction:), (IMP)_patched_ftt_meth_$SBRootFolderView$_setDockOffscreenFraction$, (IMP *)_orig_ftt_meth_$SBRootFolderView$_setDockOffscreenFraction$);
    Class _ftt_class_SBIconView = objc_getClass("SBIconView");
    MSHookMessageEx(_ftt_class_SBIconView, @selector(_legibilitySettingsWithStyle:primaryColor:), (IMP)_patched_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$, (IMP *)_orig_ftt_meth_$SBIconView$_legibilitySettingsWithStyle$primaryColor$);
    Class _ftt_class_SBMutableIconLabelImageParameters = objc_getClass("SBMutableIconLabelImageParameters");
    MSHookMessageEx(_ftt_class_SBMutableIconLabelImageParameters, @selector(setAccessibilityIncreaseContrastEnabled:), (IMP)_patched_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$, (IMP *)_orig_ftt_meth_$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$);
}
