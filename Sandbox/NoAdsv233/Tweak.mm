#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$HZSegmentationFrequencyLimitRule$adsEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_HZSegmentationFrequencyLimitRule = objc_getClass("HZSegmentationFrequencyLimitRule");
    MSHookMessageEx(_ftt_class_HZSegmentationFrequencyLimitRule, @selector(adsEnabled), (IMP)_patched_ftt_meth_$HZSegmentationFrequencyLimitRule$adsEnabled, NULL);
}
