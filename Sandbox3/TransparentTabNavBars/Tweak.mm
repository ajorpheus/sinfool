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

@class UIStatusBarForegroundStyleAttributes; @class _UIBarBackground; 
static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$_UIBarBackground$_blurWithStyle$tint$)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id); static id _logos_method$_ungrouped$_UIBarBackground$_blurWithStyle$tint$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL, long long, id); 

#line 3 "Tweak.xm"

static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}



static id _logos_method$_ungrouped$_UIBarBackground$_blurWithStyle$tint$(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1, id arg2) {
    arg1 = -1;
    return _logos_orig$_ungrouped$_UIBarBackground$_blurWithStyle$tint$(self, _cmd, arg1, arg2);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);}Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); { MSHookMessageEx(_logos_class$_ungrouped$_UIBarBackground, @selector(_blurWithStyle:tint:), (IMP)&_logos_method$_ungrouped$_UIBarBackground$_blurWithStyle$tint$, (IMP*)&_logos_orig$_ungrouped$_UIBarBackground$_blurWithStyle$tint$);}} }
#line 18 "Tweak.xm"
