#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static unsigned long long _patched_ftt_meth_$SBFolderIconZoomAnimator$_numberOfSignificantAnimations(id self, SEL _cmd) {
    return 0;
}

static id _patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    return NULL;
}

static bool _patched_ftt_meth_$SpringBoard$isMenuDoubleTapAllowed(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationZoomUpApp = objc_getClass("SBUIAnimationZoomUpApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomUpApp, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomUpApp$initWithTransitionContextProvider$, NULL);
    Class _ftt_class_SBFolderIconZoomAnimator = objc_getClass("SBFolderIconZoomAnimator");
    MSHookMessageEx(_ftt_class_SBFolderIconZoomAnimator, @selector(_numberOfSignificantAnimations), (IMP)_patched_ftt_meth_$SBFolderIconZoomAnimator$_numberOfSignificantAnimations, NULL);
    Class _ftt_class_SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, NULL);
    Class _ftt_class_SpringBoard = objc_getClass("SpringBoard");
    MSHookMessageEx(_ftt_class_SpringBoard, @selector(isMenuDoubleTapAllowed), (IMP)_patched_ftt_meth_$SpringBoard$isMenuDoubleTapAllowed, NULL);
}
