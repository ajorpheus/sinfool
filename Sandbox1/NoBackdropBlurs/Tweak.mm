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

@class SKUITabBarBackgroundView; @class CABackdropLayer; @class UITabBar; 
static bool (*_logos_orig$_ungrouped$CABackdropLayer$isEnabled)(_LOGOS_SELF_TYPE_NORMAL CABackdropLayer* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$CABackdropLayer$isEnabled(_LOGOS_SELF_TYPE_NORMAL CABackdropLayer* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static SKUITabBarBackgroundView* (*_logos_orig$_ungrouped$SKUITabBarBackgroundView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SKUITabBarBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; static SKUITabBarBackgroundView* _logos_method$_ungrouped$SKUITabBarBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SKUITabBarBackgroundView*, SEL, CGRect) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$CABackdropLayer$isEnabled(_LOGOS_SELF_TYPE_NORMAL CABackdropLayer* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static SKUITabBarBackgroundView* _logos_method$_ungrouped$SKUITabBarBackgroundView$initWithFrame$(_LOGOS_SELF_TYPE_INIT SKUITabBarBackgroundView* __unused self, SEL __unused _cmd, CGRect arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CABackdropLayer = objc_getClass("CABackdropLayer"); { MSHookMessageEx(_logos_class$_ungrouped$CABackdropLayer, @selector(isEnabled), (IMP)&_logos_method$_ungrouped$CABackdropLayer$isEnabled, (IMP*)&_logos_orig$_ungrouped$CABackdropLayer$isEnabled);}Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}Class _logos_class$_ungrouped$SKUITabBarBackgroundView = objc_getClass("SKUITabBarBackgroundView"); { MSHookMessageEx(_logos_class$_ungrouped$SKUITabBarBackgroundView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$SKUITabBarBackgroundView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$SKUITabBarBackgroundView$initWithFrame$);}} }
#line 21 "Tweak.xm"
