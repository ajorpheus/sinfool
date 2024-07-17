#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBLeafIcon$displayNameForLocation$(id self, SEL _cmd, int arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLeafIcon = objc_getClass("SBLeafIcon");
    MSHookMessageEx(_ftt_class_SBLeafIcon, @selector(displayNameForLocation:), (IMP)_patched_ftt_meth_$SBLeafIcon$displayNameForLocation$, NULL);
}
