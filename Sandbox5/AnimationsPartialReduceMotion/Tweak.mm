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

@class SBUIDismissSwitcherAnimationController; @class SBUIAnimationDosidoTransitionController; @class SBFolderIconZoomAnimator; @class SBRootAnimationSettings; @class SBCenterIconZoomAnimator; @class SBCenterAppIconZoomAnimator; @class SBUIAnimationZoomDownApp; @class SBUIAnimationLockScreenToAppZoomIn; @class SBUIAnimationZoomUpApp; 
static unsigned long long (*_logos_orig$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long (*_logos_orig$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static SBUIAnimationLockScreenToAppZoomIn* (*_logos_orig$_ungrouped$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationLockScreenToAppZoomIn*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationLockScreenToAppZoomIn* _logos_method$_ungrouped$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationLockScreenToAppZoomIn*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomUpApp* (*_logos_orig$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomUpApp* _logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp*, SEL, id) _LOGOS_RETURN_RETAINED; static unsigned long long (*_logos_orig$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBRootAnimationSettings$folderOpenSettings)(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBRootAnimationSettings$folderOpenSettings(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST, SEL); static id (*_logos_orig$_ungrouped$SBRootAnimationSettings$folderCloseSettings)(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBRootAnimationSettings$folderCloseSettings(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST, SEL); static SBUIAnimationZoomDownApp* (*_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static id (*_logos_orig$_ungrouped$SBUIAnimationDosidoTransitionController$_animationFactory)(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationDosidoTransitionController* _LOGOS_SELF_CONST, SEL); static id _logos_method$_ungrouped$SBUIAnimationDosidoTransitionController$_animationFactory(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationDosidoTransitionController* _LOGOS_SELF_CONST, SEL); static SBUIDismissSwitcherAnimationController* (*_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$)(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController*, SEL, id, id, bool) _LOGOS_RETURN_RETAINED; 

#line 3 "Tweak.xm"

static unsigned long long _logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static unsigned long long _logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBCenterAppIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static SBUIAnimationLockScreenToAppZoomIn* _logos_method$_ungrouped$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationLockScreenToAppZoomIn* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static SBUIAnimationZoomUpApp* _logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static unsigned long long _logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static id _logos_method$_ungrouped$SBRootAnimationSettings$folderOpenSettings(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static id _logos_method$_ungrouped$SBRootAnimationSettings$folderCloseSettings(_LOGOS_SELF_TYPE_NORMAL SBRootAnimationSettings* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}



static id _logos_method$_ungrouped$SBUIAnimationDosidoTransitionController$_animationFactory(_LOGOS_SELF_TYPE_NORMAL SBUIAnimationDosidoTransitionController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return NULL;
}



static SBUIDismissSwitcherAnimationController* _logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(_LOGOS_SELF_TYPE_INIT SBUIDismissSwitcherAnimationController* __unused self, SEL __unused _cmd, id arg1, id arg2, bool arg3) _LOGOS_RETURN_RETAINED {
    
    return NULL;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBCenterIconZoomAnimator = objc_getClass("SBCenterIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBCenterIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBCenterIconZoomAnimator$_numberOfSignificantAnimations);}Class _logos_class$_ungrouped$SBCenterAppIconZoomAnimator = objc_getClass("SBCenterAppIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBCenterAppIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBCenterAppIconZoomAnimator$_numberOfSignificantAnimations);}Class _logos_class$_ungrouped$SBUIAnimationLockScreenToAppZoomIn = objc_getClass("SBUIAnimationLockScreenToAppZoomIn"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationLockScreenToAppZoomIn, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationLockScreenToAppZoomIn$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SBUIAnimationZoomUpApp = objc_getClass("SBUIAnimationZoomUpApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomUpApp, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SBFolderIconZoomAnimator = objc_getClass("SBFolderIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations);}Class _logos_class$_ungrouped$SBRootAnimationSettings = objc_getClass("SBRootAnimationSettings"); { MSHookMessageEx(_logos_class$_ungrouped$SBRootAnimationSettings, @selector(folderOpenSettings), (IMP)&_logos_method$_ungrouped$SBRootAnimationSettings$folderOpenSettings, (IMP*)&_logos_orig$_ungrouped$SBRootAnimationSettings$folderOpenSettings);}{ MSHookMessageEx(_logos_class$_ungrouped$SBRootAnimationSettings, @selector(folderCloseSettings), (IMP)&_logos_method$_ungrouped$SBRootAnimationSettings$folderCloseSettings, (IMP*)&_logos_orig$_ungrouped$SBRootAnimationSettings$folderCloseSettings);}Class _logos_class$_ungrouped$SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SBUIAnimationDosidoTransitionController = objc_getClass("SBUIAnimationDosidoTransitionController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationDosidoTransitionController, @selector(_animationFactory), (IMP)&_logos_method$_ungrouped$SBUIAnimationDosidoTransitionController$_animationFactory, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationDosidoTransitionController$_animationFactory);}Class _logos_class$_ungrouped$SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)&_logos_method$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, (IMP*)&_logos_orig$_ungrouped$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$);}} }
#line 73 "Tweak.xm"
