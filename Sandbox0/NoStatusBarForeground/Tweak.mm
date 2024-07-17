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

@class UIStatusBarForegroundStyleAttributes; 
static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, double arg1, long long arg2) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$);}} }
#line 9 "Tweak.xm"
