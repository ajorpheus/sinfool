#import <UIKit/UIKit.h>

#include <substrate.h>

static unsigned long long _patched_ftt_meth_$CKBalloonView$balloonCorners(id self, SEL _cmd) {
    // •
    return 0;
}

static double _patched_ftt_meth_$CKUIBehavior$balloonMaskTailWidth(id self, SEL _cmd) {
    // •
    return 0;
}

static id _patched_ftt_meth_$CKImageBalloonView$tailMask(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKBalloonView = objc_getClass("CKBalloonView");
    MSHookMessageEx(_ftt_class_CKBalloonView, @selector(balloonCorners), (IMP)_patched_ftt_meth_$CKBalloonView$balloonCorners, NULL);
    Class _ftt_class_CKUIBehavior = objc_getClass("CKUIBehavior");
    MSHookMessageEx(_ftt_class_CKUIBehavior, @selector(balloonMaskTailWidth), (IMP)_patched_ftt_meth_$CKUIBehavior$balloonMaskTailWidth, NULL);
    Class _ftt_class_CKImageBalloonView = objc_getClass("CKImageBalloonView");
    MSHookMessageEx(_ftt_class_CKImageBalloonView, @selector(tailMask), (IMP)_patched_ftt_meth_$CKImageBalloonView$tailMask, NULL);
}
