#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBDeckSwitcherIconImageContainerView$displayName(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBDeckSwitcherIconImageContainerView = objc_getClass("SBDeckSwitcherIconImageContainerView");
    MSHookMessageEx(_ftt_class_SBDeckSwitcherIconImageContainerView, @selector(displayName), (IMP)_patched_ftt_meth_$SBDeckSwitcherIconImageContainerView$displayName, NULL);
}
