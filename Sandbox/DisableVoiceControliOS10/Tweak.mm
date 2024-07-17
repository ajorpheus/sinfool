#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityVoiceControlWithExplanation$(id self, SEL _cmd, id* arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBPolicyAggregator = objc_getClass("SBPolicyAggregator");
    MSHookMessageEx(_ftt_class_SBPolicyAggregator, @selector(_allowsCapabilityVoiceControlWithExplanation:), (IMP)_patched_ftt_meth_$SBPolicyAggregator$_allowsCapabilityVoiceControlWithExplanation$, NULL);
}
