#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBTelephonyManager$_reallySetOperatorName$)(id, SEL, id);
static void _patched_ftt_meth_$SBTelephonyManager$_reallySetOperatorName$(id self, SEL _cmd, id arg1) {
    // Set Carrier Name...
    arg1 = @"Flex 3";
    _orig_ftt_meth_$SBTelephonyManager$_reallySetOperatorName$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$SBTelephonyManager$cellularRadioCapabilityIsActive(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBTelephonyManager = objc_getClass("SBTelephonyManager");
    MSHookMessageEx(_ftt_class_SBTelephonyManager, @selector(_reallySetOperatorName:), (IMP)_patched_ftt_meth_$SBTelephonyManager$_reallySetOperatorName$, (IMP *)_orig_ftt_meth_$SBTelephonyManager$_reallySetOperatorName$);
    MSHookMessageEx(_ftt_class_SBTelephonyManager, @selector(cellularRadioCapabilityIsActive), (IMP)_patched_ftt_meth_$SBTelephonyManager$cellularRadioCapabilityIsActive, NULL);
}
