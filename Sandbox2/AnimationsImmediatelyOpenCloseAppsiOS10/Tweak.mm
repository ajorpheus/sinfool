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

@class SBFolderIconZoomAnimator; @class SBUIAnimationZoomUpApp; @class SpringBoard; @class SBUIAnimationZoomDownApp; 
static SBUIAnimationZoomUpApp* (*_logos_orig$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomUpApp* _logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp*, SEL, id) _LOGOS_RETURN_RETAINED; static unsigned long long (*_logos_orig$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations)(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static unsigned long long _logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST, SEL); static SBUIAnimationZoomDownApp* (*_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$)(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp*, SEL, id) _LOGOS_RETURN_RETAINED; static bool (*_logos_orig$_ungrouped$SpringBoard$isMenuDoubleTapAllowed)(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$SpringBoard$isMenuDoubleTapAllowed(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST, SEL); 

#line 3 "Tweak.xm"

static SBUIAnimationZoomUpApp* _logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomUpApp* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static unsigned long long _logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(_LOGOS_SELF_TYPE_NORMAL SBFolderIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}



static SBUIAnimationZoomDownApp* _logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(_LOGOS_SELF_TYPE_INIT SBUIAnimationZoomDownApp* __unused self, SEL __unused _cmd, id arg1) _LOGOS_RETURN_RETAINED {
    return NULL;
}



static bool _logos_method$_ungrouped$SpringBoard$isMenuDoubleTapAllowed(_LOGOS_SELF_TYPE_NORMAL SpringBoard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return 0;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBUIAnimationZoomUpApp = objc_getClass("SBUIAnimationZoomUpApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomUpApp, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SBFolderIconZoomAnimator = objc_getClass("SBFolderIconZoomAnimator"); { MSHookMessageEx(_logos_class$_ungrouped$SBFolderIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)&_logos_method$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations, (IMP*)&_logos_orig$_ungrouped$SBFolderIconZoomAnimator$_numberOfSignificantAnimations);}Class _logos_class$_ungrouped$SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp"); { MSHookMessageEx(_logos_class$_ungrouped$SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)&_logos_method$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, (IMP*)&_logos_orig$_ungrouped$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$);}Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); { MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(isMenuDoubleTapAllowed), (IMP)&_logos_method$_ungrouped$SpringBoard$isMenuDoubleTapAllowed, (IMP*)&_logos_orig$_ungrouped$SpringBoard$isMenuDoubleTapAllowed);}} }
#line 27 "Tweak.xm"
