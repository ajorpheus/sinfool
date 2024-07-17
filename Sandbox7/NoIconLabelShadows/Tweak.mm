#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class SBLegibilitySettings; 
static void (*_logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$)(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST, SEL, float); static void (*_logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$)(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST, SEL, float); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    arg1 = -1;
    _logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$(_LOGOS_SELF_TYPE_NORMAL SBLegibilitySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    arg1 = -1;
    _logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLegibilitySettings = objc_getClass("SBLegibilitySettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBLegibilitySettings, @selector(setIconLabelDarkShadowStrength:), (IMP)&_logos_method$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$, (IMP*)&_logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelDarkShadowStrength$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBLegibilitySettings, @selector(setIconLabelLightShadowStrength:), (IMP)&_logos_method$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$, (IMP*)&_logos_orig$_ungrouped$SBLegibilitySettings$setIconLabelLightShadowStrength$);}} }
#line 17 "Tweak.xm"
