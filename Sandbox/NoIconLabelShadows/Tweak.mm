#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBLegibilitySettings$setIconLabelDarkShadowStrength$)(id, SEL, float);
static void _patched_ftt_meth_$SBLegibilitySettings$setIconLabelDarkShadowStrength$(id self, SEL _cmd, float arg1) {
    arg1 = -1;
    _orig_ftt_meth_$SBLegibilitySettings$setIconLabelDarkShadowStrength$(self, _cmd, arg1);
}

static void (*_orig_ftt_meth_$SBLegibilitySettings$setIconLabelLightShadowStrength$)(id, SEL, float);
static void _patched_ftt_meth_$SBLegibilitySettings$setIconLabelLightShadowStrength$(id self, SEL _cmd, float arg1) {
    arg1 = -1;
    _orig_ftt_meth_$SBLegibilitySettings$setIconLabelLightShadowStrength$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLegibilitySettings = objc_getClass("SBLegibilitySettings");
    MSHookMessageEx(_ftt_class_SBLegibilitySettings, @selector(setIconLabelDarkShadowStrength:), (IMP)_patched_ftt_meth_$SBLegibilitySettings$setIconLabelDarkShadowStrength$, (IMP *)_orig_ftt_meth_$SBLegibilitySettings$setIconLabelDarkShadowStrength$);
    MSHookMessageEx(_ftt_class_SBLegibilitySettings, @selector(setIconLabelLightShadowStrength:), (IMP)_patched_ftt_meth_$SBLegibilitySettings$setIconLabelLightShadowStrength$, (IMP *)_orig_ftt_meth_$SBLegibilitySettings$setIconLabelLightShadowStrength$);
}
