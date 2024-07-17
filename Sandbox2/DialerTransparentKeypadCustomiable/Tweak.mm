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

@class TPRevealingRingView; @class PHHandsetDialerLCDView; @class PHBottomBarButton; @class PHHandsetDialerView; @class TPSuperBottomBarButton; @class UITabBarButton; 
static void (*_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL, id); static id (*_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setAnimationStyle$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, int); static void _logos_method$_ungrouped$TPRevealingRingView$setAnimationStyle$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, int); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setColorOutsideRing$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPRevealingRingView$setColorOutsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned long long); static void (*_logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL, id); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:128/255.0];
    _logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 26;
    _logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setAnimationStyle$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    
    arg1 = 2;
    _logos_orig$_ungrouped$TPRevealingRingView$setAnimationStyle$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL TPSuperBottomBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHBottomBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned long long arg2) {
    
    arg1 = [UIColor colorWithRed:146/255.0 green:146/255.0 blue:146/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPRevealingRingView$setColorOutsideRing$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    _logos_orig$_ungrouped$TPRevealingRingView$setColorOutsideRing$(self, _cmd, arg1);
}



static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$setBackgroundColor$);}{ MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(dialerColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$dialerColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor);}Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setColorInsideRing:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setColorInsideRing$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setColorInsideRing$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setCornerRadius:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setCornerRadius$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setCornerRadius$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setAnimationStyle:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setAnimationStyle$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setAnimationStyle$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setColorOutsideRing:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setColorOutsideRing$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setColorOutsideRing$);}Class _logos_class$_ungrouped$TPSuperBottomBarButton = objc_getClass("TPSuperBottomBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$TPSuperBottomBarButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$TPSuperBottomBarButton$setBackgroundColor$);}Class _logos_class$_ungrouped$PHBottomBarButton = objc_getClass("PHBottomBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$PHBottomBarButton, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHBottomBarButton$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHBottomBarButton$setBackgroundColor$);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}Class _logos_class$_ungrouped$PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerLCDView, @selector(setBackgroundColor:), (IMP)&_logos_method$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerLCDView$setBackgroundColor$);}} }
#line 79 "Tweak.xm"
