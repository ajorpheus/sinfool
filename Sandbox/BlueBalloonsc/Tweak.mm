#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$CKColoredBalloonView$color(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CKColoredBalloonView = objc_getClass("CKColoredBalloonView");
    MSHookMessageEx(_ftt_class_CKColoredBalloonView, @selector(color), (IMP)_patched_ftt_meth_$CKColoredBalloonView$color, NULL);
}
