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

@class PHHandsetDialerLCDView; @class TPRevealingRingView; @class UIStatusBar; @class PhoneRootView; @class UITabBarButton; @class PHBottomBarButton; @class UITabBarSwappableImageView; @class TPSuperBottomBarButton; @class PHHandsetDialerView; 
static id (*_logos_orig$_ungrouped$UIStatusBar$foregroundColor)(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIStatusBar$foregroundColor(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$PhoneRootView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PhoneRootView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PhoneRootView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PhoneRootView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void (*_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$)(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, bool); static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, bool); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UIStatusBar$foregroundColor(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
}



static void _logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
}



static void _logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:229/255.0 green:229/255.0 blue:229/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$PhoneRootView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PhoneRootView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:186/255.0 green:186/255.0 blue:186/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$PhoneRootView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = -0.5;
    _logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    
    arg1 = [UIColor colorWithRed:162/255.0 green:162/255.0 blue:162/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBar = objc_getClass("UIStatusBar"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBar, @selector(foregroundColor), (IMP)&_logos_method$_ungrouped$UIStatusBar$foregroundColor, (IMP*)&_logos_orig$_ungrouped$UIStatusBar$foregroundColor);}Class _logos_class$_ungrouped$PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerLCDView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$);}Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(dialerColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$dialerColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor);}Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setColorInsideRing:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$);}Class _logos_class$_ungrouped$PhoneRootView = objc_getClass("PhoneRootView"); { MSHookMessageEx(_logos_class$_ungrouped$PhoneRootView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PhoneRootView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PhoneRootView$setBackgroundColor$);}Class _logos_class$_ungrouped$TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$TPSuperBottomBarButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$);}Class _logos_class$_ungrouped$PHBottomBarButton = objc_getClass("PHBottomBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$PHBottomBarButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}Class _logos_class$_ungrouped$UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)&_logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$, (IMP*)&_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$);}} }
#line 81 "Tweak.xm"
