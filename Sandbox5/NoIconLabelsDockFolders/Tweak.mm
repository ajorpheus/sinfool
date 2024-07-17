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

@class SBRootFolderView; @class SBIconView; @class SBMutableIconLabelImageParameters; 
static void (*_logos_orig$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$)(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST, SEL, double); static id (*_logos_orig$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, long long, id); static id _logos_method$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, long long, id); static void (*_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$)(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$(_LOGOS_SELF_TYPE_NORMAL SBRootFolderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.055;
    _logos_orig$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, id arg2) {
    arg2 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    return _logos_orig$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(_LOGOS_SELF_TYPE_NORMAL SBMutableIconLabelImageParameters* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    arg1 = 1;
    _logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBRootFolderView = objc_getClass("SBRootFolderView"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootFolderView, @selector(_setDockOffscreenFraction:), (IMP)&_logos_method$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$, (IMP*)&_logos_orig$_ungrouped$SBRootFolderView$_setDockOffscreenFraction$);}Class _logos_class$_ungrouped$SBIconView = objc_getClass("SBIconView"); { MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(_legibilitySettingsWithStyle:primaryColor:), (IMP)&_logos_method$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$, (IMP*)&_logos_orig$_ungrouped$SBIconView$_legibilitySettingsWithStyle$primaryColor$);}Class _logos_class$_ungrouped$SBMutableIconLabelImageParameters = objc_getClass("SBMutableIconLabelImageParameters"); { MSHookMessageEx(_logos_class$_ungrouped$SBMutableIconLabelImageParameters, @selector(setAccessibilityIncreaseContrastEnabled:), (IMP)&_logos_method$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$, (IMP*)&_logos_orig$_ungrouped$SBMutableIconLabelImageParameters$setAccessibilityIncreaseContrastEnabled$);}} }
#line 25 "Tweak.xm"
