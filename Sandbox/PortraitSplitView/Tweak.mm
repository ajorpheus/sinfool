#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UITraitCollection$horizontalSizeClass(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UITraitCollection = objc_getClass("UITraitCollection");
    MSHookMessageEx(_ftt_class_UITraitCollection, @selector(horizontalSizeClass), (IMP)_patched_ftt_meth_$UITraitCollection$horizontalSizeClass, NULL);
}
