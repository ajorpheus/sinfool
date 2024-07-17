#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SpringBoard$_volumeChanged$(id self, SEL _cmd, __IOHIDEvent* arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SpringBoard = objc_getClass("SpringBoard");
    MSHookMessageEx(_ftt_class_SpringBoard, @selector(_volumeChanged:), (IMP)_patched_ftt_meth_$SpringBoard$_volumeChanged$, NULL);
}
