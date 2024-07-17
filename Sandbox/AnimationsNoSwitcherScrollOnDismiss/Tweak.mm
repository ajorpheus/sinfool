#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$(id self, SEL _cmd, id arg1, id arg2, bool arg3) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBUIDismissSwitcherAnimationController = objc_getClass("SBUIDismissSwitcherAnimationController");
    MSHookMessageEx(_ftt_class_SBUIDismissSwitcherAnimationController, @selector(initWithTransitionContextProvider:activatingDisplayItem:interactive:), (IMP)_patched_ftt_meth_$SBUIDismissSwitcherAnimationController$initWithTransitionContextProvider$activatingDisplayItem$interactive$, NULL);
}
