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

@class SBUIDismissSwitcherAnimationController; 
static SBUIDismissSwitcherAnimationController* (*_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$)(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController* __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)&_logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, (IMP*)&_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$);}} }
#line 9 "Tweak.xm"
