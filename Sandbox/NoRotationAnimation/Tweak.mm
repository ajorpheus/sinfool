#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UIDevice$setOrientation$animated$)(id, SEL, long long, bool);
static void _patched_ftt_meth_$UIDevice$setOrientation$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    arg2 = 0;
    _orig_ftt_meth_$UIDevice$setOrientation$animated$(self, _cmd, arg1, arg2);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIDevice = objc_getClass("UIDevice");
    MSHookMessageEx(_ftt_class_UIDevice, @selector(setOrientation:animated:), (IMP)_patched_ftt_meth_$UIDevice$setOrientation$animated$, (IMP *)_orig_ftt_meth_$UIDevice$setOrientation$animated$);
}
