#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SSEnvironmentDescription$setPresentationMode$)(id, SEL, unsigned long long);
static void _patched_ftt_meth_$SSEnvironmentDescription$setPresentationMode$(id self, SEL _cmd, unsigned long long arg1) {
    arg1 = 1;
    _orig_ftt_meth_$SSEnvironmentDescription$setPresentationMode$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SSEnvironmentDescription = objc_getClass("SSEnvironmentDescription");
    MSHookMessageEx(_ftt_class_SSEnvironmentDescription, @selector(setPresentationMode:), (IMP)_patched_ftt_meth_$SSEnvironmentDescription$setPresentationMode$, (IMP *)_orig_ftt_meth_$SSEnvironmentDescription$setPresentationMode$);
}
