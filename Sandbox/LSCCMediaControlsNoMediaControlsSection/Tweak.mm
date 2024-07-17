#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$MPUSystemMediaControlsView$transportControlsView(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MPUSystemMediaControlsView = objc_getClass("MPUSystemMediaControlsView");
    MSHookMessageEx(_ftt_class_MPUSystemMediaControlsView, @selector(transportControlsView), (IMP)_patched_ftt_meth_$MPUSystemMediaControlsView$transportControlsView, NULL);
}
