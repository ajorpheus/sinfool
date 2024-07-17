#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$MobilePhoneApplication$dialerIsNumericOnly(id self, SEL _cmd) {
    // •
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_MobilePhoneApplication = objc_getClass("MobilePhoneApplication");
    MSHookMessageEx(_ftt_class_MobilePhoneApplication, @selector(dialerIsNumericOnly), (IMP)_patched_ftt_meth_$MobilePhoneApplication$dialerIsNumericOnly, NULL);
}
