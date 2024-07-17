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

@class TPRevealingRingView; @class TPNumberPadButton; @class UITabBarSwappableImageView; @class PHHandsetDialerView; @class UITabBarButton; @class UIStatusBarNewUIStyleAttributes; @class UITabBar; @class TPPathView; 
static UIStatusBarNewUIStyleAttributes* (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$)(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes*, SEL, id, id, id, bool) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPNumberPadButton$setColor$)(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPNumberPadButton$setColor$(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST, SEL, id); static double (*_logos_orig$_ungrouped$TPNumberPadButton$alphaOutsideAndInsideRing)(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$TPNumberPadButton$alphaOutsideAndInsideRing(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setAlphaInsideRing$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$TPRevealingRingView$setAlphaInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$TPPathView$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static UITabBarSwappableImageView* (*_logos_orig$_ungrouped$UITabBarSwappableImageView$initWithImage$alternateImage$)(_LOGOS_SELF_TYPE_INIT UITabBarSwappableImageView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static UITabBarSwappableImageView* _logos_method$_ungrouped$UITabBarSwappableImageView$initWithImage$alternateImage$(_LOGOS_SELF_TYPE_INIT UITabBarSwappableImageView*, SEL, id, id) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate)(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static UIStatusBarNewUIStyleAttributes* _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(_LOGOS_SELF_TYPE_INIT UIStatusBarNewUIStyleAttributes* __unused self, SEL __unused _cmd, id arg1, id arg2, id arg3, bool arg4) _LOGOS_RETURN_RETAINED {
    
    arg3 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    return _logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$(self, _cmd, arg1, arg2, arg3, arg4);
}



static bool _logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent(_LOGOS_SELF_TYPE_NORMAL UIStatusBarNewUIStyleAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$TPNumberPadButton$setColor$(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPNumberPadButton$setColor$(self, _cmd, arg1);
}



static double _logos_method$_ungrouped$TPNumberPadButton$alphaOutsideAndInsideRing(_LOGOS_SELF_TYPE_NORMAL TPNumberPadButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$TPRevealingRingView$setAlphaInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0.5;
    _logos_orig$_ungrouped$TPRevealingRingView$setAlphaInsideRing$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPPathView$setFillColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static UITabBarSwappableImageView* _logos_method$_ungrouped$UITabBarSwappableImageView$initWithImage$alternateImage$(_LOGOS_SELF_TYPE_INIT UITabBarSwappableImageView* __unused self, SEL __unused _cmd, id arg1, id arg2) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static bool _logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate(_LOGOS_SELF_TYPE_NORMAL UITabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes = objc_getClass("UIStatusBarNewUIStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(initWithRequest:backgroundColor:foregroundColor:hasBusyBackground:), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$initWithRequest$backgroundColor$foregroundColor$hasBusyBackground$);}{ MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarNewUIStyleAttributes, @selector(isTranslucent), (IMP)&_logos_method$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent, (IMP*)&_logos_orig$_ungrouped$UIStatusBarNewUIStyleAttributes$isTranslucent);}Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(dialerColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$dialerColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor);}Class _logos_class$_ungrouped$TPNumberPadButton = objc_getClass("TPNumberPadButton"); { MSHookMessageEx(_logos_class$_ungrouped$TPNumberPadButton, @selector(setColor:), (IMP)&_logos_method$_ungrouped$TPNumberPadButton$setColor$, (IMP*)&_logos_orig$_ungrouped$TPNumberPadButton$setColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPNumberPadButton, @selector(alphaOutsideAndInsideRing), (IMP)&_logos_method$_ungrouped$TPNumberPadButton$alphaOutsideAndInsideRing, (IMP*)&_logos_orig$_ungrouped$TPNumberPadButton$alphaOutsideAndInsideRing);}Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setAlphaInsideRing:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setAlphaInsideRing$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setAlphaInsideRing$);}Class _logos_class$_ungrouped$TPPathView = objc_getClass("TPPathView"); { MSHookMessageEx(_logos_class$_ungrouped$TPPathView, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$TPPathView$setFillColor$, (IMP*)&_logos_orig$_ungrouped$TPPathView$setFillColor$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}Class _logos_class$_ungrouped$UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarSwappableImageView, @selector(initWithImage:alternateImage:), (IMP)&_logos_method$_ungrouped$UITabBarSwappableImageView$initWithImage$alternateImage$, (IMP*)&_logos_orig$_ungrouped$UITabBarSwappableImageView$initWithImage$alternateImage$);}Class _logos_class$_ungrouped$UITabBar = objc_getClass("UITabBar"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBar, @selector(_backgroundNeedsUpdate), (IMP)&_logos_method$_ungrouped$UITabBar$_backgroundNeedsUpdate, (IMP*)&_logos_orig$_ungrouped$UITabBar$_backgroundNeedsUpdate);}} }
#line 78 "Tweak.xm"
