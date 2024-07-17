#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$YNVersion$checkAgainstMinimum$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_YNVersion = objc_getClass("YNVersion");
    MSHookMessageEx(_ftt_class_YNVersion, @selector(checkAgainstMinimum:), (IMP)_patched_ftt_meth_$YNVersion$checkAgainstMinimum$, NULL);
}
