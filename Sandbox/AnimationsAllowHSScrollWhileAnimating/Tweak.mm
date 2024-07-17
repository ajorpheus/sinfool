#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIViewAnimationState$_allowsUserInteraction(id self, SEL _cmd) {
    return 1;
}

static id _patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$(id self, SEL _cmd, id arg1) {
    // Disables "App to HS" Zoom Animation
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewAnimationState = objc_getClass("UIViewAnimationState");
    MSHookMessageEx(_ftt_class_UIViewAnimationState, @selector(_allowsUserInteraction), (IMP)_patched_ftt_meth_$UIViewAnimationState$_allowsUserInteraction, NULL);
    Class _ftt_class_SBUIAnimationZoomDownApp = objc_getClass("SBUIAnimationZoomDownApp");
    MSHookMessageEx(_ftt_class_SBUIAnimationZoomDownApp, @selector(initWithTransitionContextProvider:), (IMP)_patched_ftt_meth_$SBUIAnimationZoomDownApp$initWithTransitionContextProvider$, NULL);
}
