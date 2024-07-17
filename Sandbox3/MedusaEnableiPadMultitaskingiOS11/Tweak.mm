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

@class SBPlatformController; @class SBApplication; 
static bool (*_logos_orig$_ungrouped$SBApplication$isMedusaCapable)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SBApplication$isMedusaCapable(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL); static bool (*_logos_orig$_ungrouped$SBApplication$_supportsApplicationType$)(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL, int); static bool _logos_method$_ungrouped$SBApplication$_supportsApplicationType$(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST, SEL, int); static long long (*_logos_orig$_ungrouped$SBPlatformController$medusaCapabilities)(_LOGOS_SELF_TYPE_NORMAL SBPlatformController* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$SBPlatformController$medusaCapabilities(_LOGOS_SELF_TYPE_NORMAL SBPlatformController* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$SBApplication$isMedusaCapable(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 1;
}



static long long _logos_method$_ungrouped$SBPlatformController$medusaCapabilities(_LOGOS_SELF_TYPE_NORMAL SBPlatformController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 2;
}



static bool _logos_method$_ungrouped$SBApplication$_supportsApplicationType$(_LOGOS_SELF_TYPE_NORMAL SBApplication* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, int arg1) {
    return 1;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBApplication = objc_getClass("SBApplication"); { MSHookMessageEx(_logos_class$_ungrouped$SBApplication, @selector(isMedusaCapable), (IMP)&_logos_method$_ungrouped$SBApplication$isMedusaCapable, (IMP*)&_logos_orig$_ungrouped$SBApplication$isMedusaCapable);}{ MSHookMessageEx(_logos_class$_ungrouped$SBApplication, @selector(_supportsApplicationType:), (IMP)&_logos_method$_ungrouped$SBApplication$_supportsApplicationType$, (IMP*)&_logos_orig$_ungrouped$SBApplication$_supportsApplicationType$);}Class _logos_class$_ungrouped$SBPlatformController = objc_getClass("SBPlatformController"); { MSHookMessageEx(_logos_class$_ungrouped$SBPlatformController, @selector(medusaCapabilities), (IMP)&_logos_method$_ungrouped$SBPlatformController$medusaCapabilities, (IMP*)&_logos_orig$_ungrouped$SBPlatformController$medusaCapabilities);}} }
#line 21 "Tweak.xm"
