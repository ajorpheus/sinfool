#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CCUIControlCenterVisualEffect$contentsMultiplyColor(id self, SEL _cmd) {
    // Set Color...
    return [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterVisualEffect = objc_getClass("CCUIControlCenterVisualEffect");
    MSHookMessageEx(_ftt_class_CCUIControlCenterVisualEffect, @selector(contentsMultiplyColor), (IMP)_patched_ftt_meth_$CCUIControlCenterVisualEffect$contentsMultiplyColor, NULL);
}
