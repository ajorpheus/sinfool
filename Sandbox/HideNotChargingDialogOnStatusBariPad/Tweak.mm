#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBStatusBarStateAggregator$_shouldShowNotChargingItem(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBStatusBarStateAggregator = objc_getClass("SBStatusBarStateAggregator");
    MSHookMessageEx(_ftt_class_SBStatusBarStateAggregator, @selector(_shouldShowNotChargingItem), (IMP)_patched_ftt_meth_$SBStatusBarStateAggregator$_shouldShowNotChargingItem, NULL);
}
