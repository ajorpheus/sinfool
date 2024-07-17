#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$TSAdParameters$adsDisabled(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TSAdParameters = objc_getClass("TSAdParameters");
    MSHookMessageEx(_ftt_class_TSAdParameters, @selector(adsDisabled), (IMP)_patched_ftt_meth_$TSAdParameters$adsDisabled, NULL);
}
