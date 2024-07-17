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

@class SBLockScreenViewController; @class _SBLockScreenSingleBatteryChargingView; 
static float (*_logos_orig$_ungrouped$_SBLockScreenSingleBatteryChargingView$_batteryBaseline)(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_batteryBaseline(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST, SEL); static float (*_logos_orig$_ungrouped$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset)(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST, SEL); static float _logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST, SEL); static BOOL (*_logos_orig$_ungrouped$SBLockScreenViewController$_shouldShowChargingText)(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBLockScreenViewController$_shouldShowChargingText(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static float _logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_batteryBaseline(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 290;
}



static BOOL _logos_method$_ungrouped$SBLockScreenViewController$_shouldShowChargingText(_LOGOS_SELF_TYPE_NORMAL SBLockScreenViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static float _logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset(_LOGOS_SELF_TYPE_NORMAL _SBLockScreenSingleBatteryChargingView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 320;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_SBLockScreenSingleBatteryChargingView = objc_getClass("_SBLockScreenSingleBatteryChargingView"); { MSHookMessageEx(_logos_class$_ungrouped$_SBLockScreenSingleBatteryChargingView, @selector(_batteryBaseline), (IMP)&_logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_batteryBaseline, (IMP*)&_logos_orig$_ungrouped$_SBLockScreenSingleBatteryChargingView$_batteryBaseline);}{ MSHookMessageEx(_logos_class$_ungrouped$_SBLockScreenSingleBatteryChargingView, @selector(_chargingTextBaselineOffset), (IMP)&_logos_method$_ungrouped$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset, (IMP*)&_logos_orig$_ungrouped$_SBLockScreenSingleBatteryChargingView$_chargingTextBaselineOffset);}Class _logos_class$_ungrouped$SBLockScreenViewController = objc_getClass("SBLockScreenViewController"); { MSHookMessageEx(_logos_class$_ungrouped$SBLockScreenViewController, @selector(_shouldShowChargingText), (IMP)&_logos_method$_ungrouped$SBLockScreenViewController$_shouldShowChargingText, (IMP*)&_logos_orig$_ungrouped$SBLockScreenViewController$_shouldShowChargingText);}} }
#line 24 "Tweak.xm"
