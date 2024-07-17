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

@class UIStatusBarNewUIForegroundStyleAttributes; 
static UIStatusBarNewUIForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes*, SEL, float, int, id, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static UIStatusBarNewUIForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIForegroundStyleAttributes* __unused self, SEL __unused _cmd, float arg1, int arg2, id arg3, id arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$(self, _cmd, arg1, arg2, arg3, arg4);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes = objc_getClass("UIStatusBarNewUIForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:backgroundColor:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$backgroundColor$);}} }
#line 11 "Tweak.xm"
