#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBCCNightShiftSetting$isRestricted(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBCCNightShiftSetting = objc_getClass("SBCCNightShiftSetting");
    MSHookMessageEx(_ftt_class_SBCCNightShiftSetting, @selector(isRestricted), (IMP)_patched_ftt_meth_$SBCCNightShiftSetting$isRestricted, NULL);
}
