#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBAppSwitcherController$_animationFactoryForIconAlphaTransition(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBAppSwitcherController = objc_getClass("SBAppSwitcherController");
    MSHookMessageEx(_ftt_class_SBAppSwitcherController, @selector(_animationFactoryForIconAlphaTransition), (IMP)_patched_ftt_meth_$SBAppSwitcherController$_animationFactoryForIconAlphaTransition, NULL);
}
