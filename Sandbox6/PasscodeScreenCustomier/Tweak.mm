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

@class TPPathView; @class TPRevealingRingView; @class SBUIPasscodeLockNumberPad; @class SBLockOverlayStyleProperties; 
static float (*_logos_orig$_ungrouped$SBLockOverlayStyleProperties$tintAlpha)(_LOGOS_SELF_TYPE_NORMAL SBLockOverlayStyleProperties* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$SBLockOverlayStyleProperties$tintAlpha(_LOGOS_SELF_TYPE_NORMAL SBLockOverlayStyleProperties* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$)(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST, SEL, float); static void (*_logos_orig$_ungrouped$TPPathView$setFillColor$)(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$)(_LOGOS_SELF_TYPE_NORMAL SBUIPasscodeLockNumberPad* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$(_LOGOS_SELF_TYPE_NORMAL SBUIPasscodeLockNumberPad* _LOGOS_SELF_CONST, SEL, BOOL); 

#line 3 "Tweak.xm"

static float _logos_method$_ungrouped$SBLockOverlayStyleProperties$tintAlpha(_LOGOS_SELF_TYPE_NORMAL SBLockOverlayStyleProperties* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(_LOGOS_SELF_TYPE_NORMAL TPRevealingRingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, float arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$TPPathView$setFillColor$(_LOGOS_SELF_TYPE_NORMAL TPPathView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    _logos_orig$_ungrouped$TPPathView$setFillColor$(self, _cmd, arg1);
}



static void _logos_method$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$(_LOGOS_SELF_TYPE_NORMAL SBUIPasscodeLockNumberPad* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL arg1) {
    
    arg1 = 1;
    _logos_orig$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBLockOverlayStyleProperties = objc_getClass("SBLockOverlayStyleProperties"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockOverlayStyleProperties, @selector(tintAlpha), (IMP)&_logos_method$_ungrouped$SBLockOverlayStyleProperties$tintAlpha, (IMP*)&_logos_orig$_ungrouped$SBLockOverlayStyleProperties$tintAlpha);}Class _logos_class$_ungrouped$TPRevealingRingView = objc_getClass("TPRevealingRingView"); { MSHookMessageEx(_logos_class$_ungrouped$TPRevealingRingView, @selector(setDefaultRingStrokeWidth:), (IMP)&_logos_method$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$, (IMP*)&_logos_orig$_ungrouped$TPRevealingRingView$setDefaultRingStrokeWidth$);}Class _logos_class$_ungrouped$TPPathView = objc_getClass("TPPathView"); { MSHookMessageEx(_logos_class$_ungrouped$TPPathView, @selector(setFillColor:), (IMP)&_logos_method$_ungrouped$TPPathView$setFillColor$, (IMP*)&_logos_orig$_ungrouped$TPPathView$setFillColor$);}Class _logos_class$_ungrouped$SBUIPasscodeLockNumberPad = objc_getClass("SBUIPasscodeLockNumberPad"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIPasscodeLockNumberPad, @selector(setShowsEmergencyCallButton:), (IMP)&_logos_method$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$, (IMP*)&_logos_orig$_ungrouped$SBUIPasscodeLockNumberPad$setShowsEmergencyCallButton$);}} }
#line 34 "Tweak.xm"
