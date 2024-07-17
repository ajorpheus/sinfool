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

@class TPPathView; @class UITabBarButton; @class UIStatusBarStyleAttributes; @class UITabBarSwappableImageView; @class TPRevealingRingView; @class PHHandsetDialerLCDView; @class PHHandsetDialerView; 
static id (*_logos_orig$_ungrouped$UIStatusBarStyleAttributes$foregroundStyle)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleAttributes* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$UIStatusBarStyleAttributes$foregroundStyle(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleAttributes* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PHHandsetDialerLCDView$lcdColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHHandsetDialerLCDView$lcdColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor)(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPPathView$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static float (*_logos_orig$_ungrouped$TPRevealingRingView$alphaInsideRing)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$TPRevealingRingView$alphaInsideRing(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static int (*_logos_orig$_ungrouped$TPRevealingRingView$animationStyle)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$TPRevealingRingView$animationStyle(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$)(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned int); static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST, SEL, id, unsigned int); static void (*_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$)(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST, SEL, BOOL); 

#line 3 "Tweak.xm"

static id _logos_method$_ungrouped$UIStatusBarStyleAttributes$foregroundStyle(_LOGOS_SELF_TYPE_NORMAL UIStatusBarStyleAttributes* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$PHHandsetDialerLCDView$lcdColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerLCDView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$PHHandsetDialerView$dialerColor(_LOGOS_SELF_TYPE_NORMAL PHHandsetDialerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:94/255.0 green:214/255.0 blue:214/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPPathView$setFillColor$(self, _cmd, arg1);
}



static float _logos_method$_ungrouped$TPRevealingRingView$alphaInsideRing(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}



static int _logos_method$_ungrouped$TPRevealingRingView$animationStyle(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$(_LOGOS_SELF_TYPE_NORMAL UITabBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, unsigned int arg2) {
    
    arg1 = [UIColor colorWithRed:136/255.0 green:136/255.0 blue:136/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(_LOGOS_SELF_TYPE_NORMAL UITabBarSwappableImageView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIStatusBarStyleAttributes = objc_getClass("UIStatusBarStyleAttributes"); { MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarStyleAttributes, @selector(foregroundStyle), (IMP)&_logos_method$_ungrouped$UIStatusBarStyleAttributes$foregroundStyle, (IMP*)&_logos_orig$_ungrouped$UIStatusBarStyleAttributes$foregroundStyle);}Class _logos_class$_ungrouped$PHHandsetDialerLCDView = objc_getClass("PHHandsetDialerLCDView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerLCDView, @selector(lcdColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerLCDView$lcdColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerLCDView$lcdColor);}Class _logos_class$_ungrouped$PHHandsetDialerView = objc_getClass("PHHandsetDialerView"); { MSHookMessageEx(_logos_class$_ungrouped$PHHandsetDialerView, @selector(dialerColor), (IMP)&_logos_method$_ungrouped$PHHandsetDialerView$dialerColor, (IMP*)&_logos_orig$_ungrouped$PHHandsetDialerView$dialerColor);}Class _logos_class$_ungrouped$TPPathView = objc_getClass("TPPathView"); { MSHookMessageEx(_logos_class$_ungrouped$TPPathView, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$TPPathView$setFillColor$, (IMP*)&_logos_orig$_ungrouped$TPPathView$setFillColor$);}Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(alphaInsideRing), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$alphaInsideRing, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$alphaInsideRing);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$);}{ MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(animationStyle), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$animationStyle, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$animationStyle);}Class _logos_class$_ungrouped$UITabBarButton = objc_getClass("UITabBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarButton, @selector(_setContentTintColor:forState:), (IMP)&_logos_method$_ungrouped$UITabBarButton$_setContentTintColor$forState$, (IMP*)&_logos_orig$_ungrouped$UITabBarButton$_setContentTintColor$forState$);}Class _logos_class$_ungrouped$UITabBarSwappableImageView = objc_getClass("UITabBarSwappableImageView"); { MSHookMessageEx(_logos_class$_ungrouped$UITabBarSwappableImageView, @selector(showAlternateImage:), (IMP)&_logos_method$_ungrouped$UITabBarSwappableImageView$showAlternateImage$, (IMP*)&_logos_orig$_ungrouped$UITabBarSwappableImageView$showAlternateImage$);}} }
#line 70 "Tweak.xm"
