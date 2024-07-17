#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIViewAnimationState$_allowsUserInteraction(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIViewAnimationState = objc_getClass("UIViewAnimationState");
    MSHookMessageEx(_ftt_class_UIViewAnimationState, @selector(_allowsUserInteraction), (IMP)_patched_ftt_meth_$UIViewAnimationState$_allowsUserInteraction, NULL);
}
