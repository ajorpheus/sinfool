#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$UIKBScreenTraits$idiom(id self, SEL _cmd) {
    return 3;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBScreenTraits = objc_getClass("UIKBScreenTraits");
    MSHookMessageEx(_ftt_class_UIKBScreenTraits, @selector(idiom), (IMP)_patched_ftt_meth_$UIKBScreenTraits$idiom, NULL);
}
