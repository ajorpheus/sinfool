#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBCoverSheetSystemGesturesDelegate$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCoverSheetSystemGesturesDelegate = objc_getClass("SBCoverSheetSystemGesturesDelegate");
    MSHookMessageEx(_ftt_class_SBCoverSheetSystemGesturesDelegate, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$SBCoverSheetSystemGesturesDelegate$gestureRecognizerShouldBegin$, NULL);
}
