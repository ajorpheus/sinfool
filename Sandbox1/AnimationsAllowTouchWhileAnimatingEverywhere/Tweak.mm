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

@class SBUIDismissSwitcherAnimationController; @class UIViewAnimationState; @class SBUIAnimationZoomDownApp; 
static bool (*_logos_orig$_ungrouped$UIViewAnimationState$_allowsUserInteraction)(_LOGOS_SELF_TYPE_NORMAL UIViewAnimationState* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$UIViewAnimationState$_allowsUserInteraction(_LOGOS_SELF_TYPE_NORMAL UIViewAnimationState* _LOGOS_SELF_CONST, SEL); static SBUIAnimationZoomDownApp* (*_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIDismissSwitcherAnimationController* (*_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$)(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static bool _logos_method$_ungrouped$UIViewAnimationState$_allowsUserInteraction(_LOGOS_SELF_TYPE_NORMAL UIViewAnimationState* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 1;
}



static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController* __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$UIViewAnimationState = objc_getClass("UIViewAnimationState"); { MSHookMessageEx(_logos_class$_ungrouped$UIViewAnimationState, @selector(_allowsUserInteraction), (IMP)&_logos_method$_ungrouped$UIViewAnimationState$_allowsUserInteraction, (IMP*)&_logos_orig$_ungrouped$UIViewAnimationState$_allowsUserInteraction);}Class _logos_class$_ungrouped$SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)&_logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, (IMP*)&_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$);}} }
#line 24 "Tweak.xm"
