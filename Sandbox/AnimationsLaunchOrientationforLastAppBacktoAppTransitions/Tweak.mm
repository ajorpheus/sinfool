#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$SBUIAnimationDosidoTransitionController$orientationAtLaunch(id self, SEL _cmd) {
    // Slide Open from... 1=Right, 2=Left, 3=Bottom, 4=Top
    return 4;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationDosidoTransitionController = objc_getClass("SBUIAnimationDosidoTransitionController");
    MSHookMessageEx(_ftt_class_SBUIAnimationDosidoTransitionController, @selector(orientationAtLaunch), (IMP)_patched_ftt_meth_$SBUIAnimationDosidoTransitionController$orientationAtLaunch, NULL);
}
