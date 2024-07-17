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

@class UIStatusBarStyleRequest; 
static UIStatusBarStyleRequest* (*_logos_orig$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$)(_LOGOS_SELF_TYPE_INIT UIStatusBarStyleRequest*, SEL, long long, bool, long long, id, double, id) _LOGOS_RETURN_RETAINED; static UIStatusBarStyleRequest* _logos_method$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$(_LOGOS_SELF_TYPE_INIT UIStatusBarStyleRequest*, SEL, long long, bool, long long, id, double, id) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static UIStatusBarStyleRequest* _logos_method$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$(_LOGOS_SELF_TYPE_INIT UIStatusBarStyleRequest* __unused self, SEL __unused _cmd, long long arg1, bool arg2, long long arg3, id arg4, double arg5, id arg6) _LOGOS_RETURN_RETAINED {
    arg1 = -1;
    return _logos_orig$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarStyleRequest = objc_getClass("UIStatusBarStyleRequest"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarStyleRequest, @selector(initWithStyle:legacy:legibilityStyle:foregroundColor:foregroundAlpha:overrideHeight:), (IMP)&_logos_method$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarStyleRequest$initWithStyle$legacy$legibilityStyle$foregroundColor$foregroundAlpha$overrideHeight$);}} }
#line 10 "Tweak.xm"
