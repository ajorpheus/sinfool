#import <UIKit/UIKit.h>

#include <substrate.h>

static float _patched_ftt_meth_$SBFColorBoxes$contrast(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBFColorBoxes = objc_getClass("SBFColorBoxes");
    MSHookMessageEx(_ftt_class_SBFColorBoxes, @selector(contrast), (IMP)_patched_ftt_meth_$SBFColorBoxes$contrast, NULL);
}
