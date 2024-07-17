#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CCUIControlCenterSlider$ccuiSupportsDelayedTouchesByContainingScrollViewForGesture$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CCUIControlCenterSlider = objc_getClass("CCUIControlCenterSlider");
    MSHookMessageEx(_ftt_class_CCUIControlCenterSlider, @selector(ccuiSupportsDelayedTouchesByContainingScrollViewForGesture:), (IMP)_patched_ftt_meth_$CCUIControlCenterSlider$ccuiSupportsDelayedTouchesByContainingScrollViewForGesture$, NULL);
}
