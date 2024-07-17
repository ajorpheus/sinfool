#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UITraitCollection$verticalSizeClass(id self, SEL _cmd) {
    return 2;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITraitCollection = objc_getClass("UITraitCollection");
    MSHookMessageEx(_ftt_class_UITraitCollection, @selector(verticalSizeClass), (IMP)_patched_ftt_meth_$UITraitCollection$verticalSizeClass, NULL);
}
