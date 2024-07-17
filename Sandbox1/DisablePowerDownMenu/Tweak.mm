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

@class SBPowerDownController; 
static SBPowerDownController* (*_logos_orig$_ungrouped$SBPowerDownController$init)(_LOGOS_SELF_TYPE_INIT SBPowerDownController*, SEL) _LOGOS_RETURN_RETAINED; static SBPowerDownController* _logos_method$_ungrouped$SBPowerDownController$init(_LOGOS_SELF_TYPE_INIT SBPowerDownController*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBPowerDownController* _logos_method$_ungrouped$SBPowerDownController$init(_LOGOS_SELF_TYPE_INIT SBPowerDownController* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBPowerDownController = objc_getClass("SBPowerDownController"); { MSHookMessageEx(_logos_class$_ungrouped$SBPowerDownController, @selector(init), (IMP)&_logos_method$_ungrouped$SBPowerDownController$init, (IMP*)&_logos_orig$_ungrouped$SBPowerDownController$init);}} }
#line 9 "Tweak.xm"
