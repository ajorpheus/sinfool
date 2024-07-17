#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CAMModeDial$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$CAMModeDial$initWithFrame$, NULL);
}
