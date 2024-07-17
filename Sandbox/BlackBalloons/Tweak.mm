#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKUIBehavior$blue_balloonColors(id self, SEL _cmd) {
    // Blue Balloons
    return NULL;
}

static id _patched_ftt_meth_$CKUIBehavior$green_balloonColors(id self, SEL _cmd) {
    // Green Balloons
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(blue_balloonColors), (IMP)_patched_ftt_meth_$CKUIBehavior$blue_balloonColors, NULL);
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(green_balloonColors), (IMP)_patched_ftt_meth_$CKUIBehavior$green_balloonColors, NULL);
}
