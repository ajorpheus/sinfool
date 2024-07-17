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

@class SBWiFiManager; @class SBTelephonyManager; 
static bool (*_logos_orig$_ungrouped$SBWiFiManager$isAssociatedToIOSHotspot)(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBWiFiManager$isAssociatedToIOSHotspot(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$SBWiFiManager$signalStrengthBars)(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$SBWiFiManager$signalStrengthBars(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST, SEL); static int (*_logos_orig$_ungrouped$SBTelephonyManager$dataConnectionType)(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static int _logos_method$_ungrouped$SBTelephonyManager$dataConnectionType(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBWiFiManager$isAssociatedToIOSHotspot(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static int _logos_method$_ungrouped$SBTelephonyManager$dataConnectionType(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 9;
}



static int _logos_method$_ungrouped$SBWiFiManager$signalStrengthBars(_LOGOS_SELF_TYPE_NORMAL SBWiFiManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 3;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBWiFiManager = objc_getClass("SBWiFiManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBWiFiManager, @selector(isAssociatedToIOSHotspot), (IMP)&_logos_method$_ungrouped$SBWiFiManager$isAssociatedToIOSHotspot, (IMP*)&_logos_orig$_ungrouped$SBWiFiManager$isAssociatedToIOSHotspot);}{ MSHookMessageEx(_logos_class$_ungrouped$SBWiFiManager, @selector(signalStrengthBars), (IMP)&_logos_method$_ungrouped$SBWiFiManager$signalStrengthBars, (IMP*)&_logos_orig$_ungrouped$SBWiFiManager$signalStrengthBars);}Class _logos_class$_ungrouped$SBTelephonyManager = objc_getClass("SBTelephonyManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBTelephonyManager, @selector(dataConnectionType), (IMP)&_logos_method$_ungrouped$SBTelephonyManager$dataConnectionType, (IMP*)&_logos_orig$_ungrouped$SBTelephonyManager$dataConnectionType);}} }
#line 21 "Tweak.xm"
