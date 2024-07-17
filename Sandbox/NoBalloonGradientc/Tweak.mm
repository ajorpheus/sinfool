#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CKColoredBalloonView$gradientView(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKColoredBalloonView = objc_getClass("CKColoredBalloonView");
    MSHookMessageEx(_ftt_class_CKColoredBalloonView, @selector(gradientView), (IMP)_patched_ftt_meth_$CKColoredBalloonView$gradientView, NULL);
}
