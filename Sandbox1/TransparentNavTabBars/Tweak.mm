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

@class UINavigationItemView; @class UIStatusBarForegroundStyleAttributes; @class PUPhotoBrowserTitleView; 
static UIStatusBarForegroundStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$)(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes*, SEL, double, long long, id, bool, long long) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$)(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST, SEL, long long); static bool _logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST, SEL, long long); static void (*_logos_orig$_ungrouped$PUPhotoBrowserTitleView$setTextColor$)(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PUPhotoBrowserTitleView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static UIStatusBarForegroundStyleAttributes* _logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(_LOGOS_SELF_TYPE_INIT UIStatusBarForegroundStyleAttributes* __unused self, SEL __unused _cmd, double arg1, long long arg2, id arg3, bool arg4, long long arg5) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$(self, _cmd, arg1, arg2, arg3, arg4, arg5);
}



static bool _logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$(_LOGOS_SELF_TYPE_NORMAL UINavigationItemView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    return 1;
}



static void _logos_method$_ungrouped$PUPhotoBrowserTitleView$setTextColor$(_LOGOS_SELF_TYPE_NORMAL PUPhotoBrowserTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:113/255.0 green:120/255.0 blue:128/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$PUPhotoBrowserTitleView$setTextColor$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes = objc_getClass("UIStatusBarForegroundStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundStyleAttributes, @selector(initWithHeight:legibilityStyle:tintColor:hasBusyBackground:idiom:), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundStyleAttributes$initWithHeight$legibilityStyle$tintColor$hasBusyBackground$idiom$);}Class _logos_class$_ungrouped$UINavigationItemView = objc_getClass("UINavigationItemView"); { MSHookMessageEx(_logos_class$_ungrouped$UINavigationItemView, @selector(_useSilverLookForBarStyle:), (IMP)&_logos_method$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$, (IMP*)&_logos_orig$_ungrouped$UINavigationItemView$_useSilverLookForBarStyle$);}Class _logos_class$_ungrouped$PUPhotoBrowserTitleView = objc_getClass("PUPhotoBrowserTitleView"); { MSHookMessageEx(_logos_class$_ungrouped$PUPhotoBrowserTitleView, @selector(setTextColor:), (IMP)&_logos_method$_ungrouped$PUPhotoBrowserTitleView$setTextColor$, (IMP*)&_logos_orig$_ungrouped$PUPhotoBrowserTitleView$setTextColor$);}} }
#line 26 "Tweak.xm"
