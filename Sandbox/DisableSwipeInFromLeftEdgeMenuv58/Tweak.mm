#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$IIViewDeckController$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_IIViewDeckController = objc_getClass("IIViewDeckController");
    MSHookMessageEx(_ftt_class_IIViewDeckController, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$IIViewDeckController$gestureRecognizerShouldBegin$, NULL);
}
