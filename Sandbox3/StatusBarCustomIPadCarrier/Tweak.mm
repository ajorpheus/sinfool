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

@class SBTelephonyManager; 
static void (*_logos_orig$_ungrouped$SBTelephonyManager$_reallySetOperatorName$)(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL, id); static void _logos_method$_ungrouped$SBTelephonyManager$_reallySetOperatorName$(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL, id); static bool (*_logos_orig$_ungrouped$SBTelephonyManager$cellularRadioCapabilityIsActive)(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBTelephonyManager$cellularRadioCapabilityIsActive(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SBTelephonyManager$_reallySetOperatorName$(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    
    arg1 = @"Flex 3";
    _logos_orig$_ungrouped$SBTelephonyManager$_reallySetOperatorName$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$SBTelephonyManager$cellularRadioCapabilityIsActive(_LOGOS_SELF_TYPE_NORMAL SBTelephonyManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBTelephonyManager = objc_getClass("SBTelephonyManager"); { MSHookMessageEx(_logos_class$_ungrouped$SBTelephonyManager, @selector(_reallySetOperatorName:), (IMP)&_logos_method$_ungrouped$SBTelephonyManager$_reallySetOperatorName$, (IMP*)&_logos_orig$_ungrouped$SBTelephonyManager$_reallySetOperatorName$);}{ MSHookMessageEx(_logos_class$_ungrouped$SBTelephonyManager, @selector(cellularRadioCapabilityIsActive), (IMP)&_logos_method$_ungrouped$SBTelephonyManager$cellularRadioCapabilityIsActive, (IMP*)&_logos_orig$_ungrouped$SBTelephonyManager$cellularRadioCapabilityIsActive);}} }
#line 17 "Tweak.xm"
