#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$GPAdvertisementManager$init(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_GPAdvertisementManager = objc_getClass("GPAdvertisementManager");
    MSHookMessageEx(_ftt_class_GPAdvertisementManager, @selector(init), (IMP)_patched_ftt_meth_$GPAdvertisementManager$init, NULL);
}
