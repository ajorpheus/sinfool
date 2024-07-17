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

@class SBLockScreenViewController; @class UIStatusBarForegroundStyleAttributes; @class UIView; 
static long long (*_logos_orig$_ungrouped$SBLockScreenViewController$statusBarStyle)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBLockScreenViewController$statusBarStyle(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UIView$_canHandleStatusBarTouchAtLocation$)(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, CGPoint); static bool _logos_method$_ungrouped$UIView$_canHandleStatusBarTouchAtLocation$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST, SEL, CGPoint); 

#line 3 "Tweak.xm"

static long long _logos_method$_ungrouped$SBLockScreenViewController$statusBarStyle(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) _LOGOS_RETURN_RETAINED {
    
    arg1 = 1120;
    return _logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}



static bool _logos_method$_ungrouped$UIView$_canHandleStatusBarTouchAtLocation$(_LOGOS_SELF_TYPE_NORMAL UIView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, CGPoint arg1) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(statusBarStyle), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$statusBarStyle, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$statusBarStyle);}Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);}Class _logos_class$_ungrouped$UIView = objc_getClass("UIView"); { MSHookMessageEx(_logos_class$_ungrouped$UIView, @selector(_canHandleStatusBarTouchAtLocation:), (IMP)&_logos_method$_ungrouped$UIView$_canHandleStatusBarTouchAtLocation$, (IMP*)&_logos_orig$_ungrouped$UIView$_canHandleStatusBarTouchAtLocation$);}} }
#line 25 "Tweak.xm"
