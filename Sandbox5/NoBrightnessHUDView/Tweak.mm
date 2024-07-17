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

@class SBBrightnessHUDView; 
static SBBrightnessHUDView* (*_logos_orig$_ungrouped$SBBrightnessHUDView$init)(_LOGOS_SELF_TYPE_INIT SBBrightnessHUDView*, SEL) _LOGOS_RETURN_RETAINED; static SBBrightnessHUDView* _logos_method$_ungrouped$SBBrightnessHUDView$init(_LOGOS_SELF_TYPE_INIT SBBrightnessHUDView*, SEL) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBBrightnessHUDView* _logos_method$_ungrouped$SBBrightnessHUDView$init(_LOGOS_SELF_TYPE_INIT SBBrightnessHUDView* __unused self, SEL __unused _cmd) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBBrightnessHUDView = objc_getClass("SBBrightnessHUDView"); { MSHookMessageEx(_logos_class$_ungrouped$SBBrightnessHUDView, @selector(init), (IMP)&_logos_method$_ungrouped$SBBrightnessHUDView$init, (IMP*)&_logos_orig$_ungrouped$SBBrightnessHUDView$init);}} }
#line 9 "Tweak.xm"
