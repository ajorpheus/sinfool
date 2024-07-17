#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUInteractivePinchDismissalController$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUInteractivePinchDismissalController = objc_getClass("PUInteractivePinchDismissalController");
    MSHookMessageEx(_ftt_class_PUInteractivePinchDismissalController, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$PUInteractivePinchDismissalController$gestureRecognizerShouldBegin$, NULL);
}
