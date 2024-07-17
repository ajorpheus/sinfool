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

@class SBLockScreenView; @class _UILegibilitySettings; 
static BOOL (*_logos_orig$_ungrouped$SBLockScreenView$legibilitySettingsOverrideVibrancy)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBLockScreenView$legibilitySettingsOverrideVibrancy(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$_UILegibilitySettings$setPrimaryColor$)(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UILegibilitySettings$setPrimaryColor$(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$_UILegibilitySettings$setSecondaryColor$)(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$_UILegibilitySettings$setSecondaryColor$(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static BOOL _logos_method$_ungrouped$SBLockScreenView$legibilitySettingsOverrideVibrancy(_LOGOS_SELF_TYPE_NORMAL SBLockScreenView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static void _logos_method$_ungrouped$_UILegibilitySettings$setPrimaryColor$(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:35/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UILegibilitySettings$setPrimaryColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$_UILegibilitySettings$setSecondaryColor$(_LOGOS_SELF_TYPE_NORMAL _UILegibilitySettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:18/255.0 green:112/255.0 blue:112/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$_UILegibilitySettings$setSecondaryColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenView = objc_getClass("SBLockScreenView"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenView, @selector(legibilitySettingsOverrideVibrancy), (IMP)&_logos_method$_ungrouped$SBLockScreenView$legibilitySettingsOverrideVibrancy, (IMP*)&_logos_orig$_ungrouped$SBLockScreenView$legibilitySettingsOverrideVibrancy);}Class _logos_class$_ungrouped$_UILegibilitySettings = objc_getClass("_UILegibilitySettings"); { MSHookMessageEx(_logos_class$_ungrouped$_UILegibilitySettings, @selector(setPrimaryColor:), (IMP)&_logos_method$_ungrouped$_UILegibilitySettings$setPrimaryColor$, (IMP*)&_logos_orig$_ungrouped$_UILegibilitySettings$setPrimaryColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$_UILegibilitySettings, @selector(setSecondaryColor:), (IMP)&_logos_method$_ungrouped$_UILegibilitySettings$setSecondaryColor$, (IMP*)&_logos_orig$_ungrouped$_UILegibilitySettings$setSecondaryColor$);}} }
#line 25 "Tweak.xm"
