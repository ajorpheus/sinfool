#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBUIAnimationDosidoTransitionController$_animationFactory(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIAnimationDosidoTransitionController = objc_getClass("SBUIAnimationDosidoTransitionController");
    MSHookMessageEx(_ftt_class_SBUIAnimationDosidoTransitionController, @selector(_animationFactory), (IMP)_patched_ftt_meth_$SBUIAnimationDosidoTransitionController$_animationFactory, NULL);
}
