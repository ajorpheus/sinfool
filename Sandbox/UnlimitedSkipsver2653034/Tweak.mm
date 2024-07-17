#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SXMClientDMCAManagaer$init(id self, SEL _cmd) {
    // •
    return NULL;
}

static id _patched_ftt_meth_$SXMPlayhead$lblSkipsLeftCount(id self, SEL _cmd) {
    // •
    return NULL;
}

static id _patched_ftt_meth_$SXMDMCAManager$dmca(id self, SEL _cmd) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SXMClientDMCAManagaer = objc_getClass("SXMClientDMCAManagaer");
    MSHookMessageEx(_ftt_class_SXMClientDMCAManagaer, @selector(init), (IMP)_patched_ftt_meth_$SXMClientDMCAManagaer$init, NULL);
    Class _ftt_class_SXMPlayhead = objc_getClass("SXMPlayhead");
    MSHookMessageEx(_ftt_class_SXMPlayhead, @selector(lblSkipsLeftCount), (IMP)_patched_ftt_meth_$SXMPlayhead$lblSkipsLeftCount, NULL);
    Class _ftt_class_SXMDMCAManager = objc_getClass("SXMDMCAManager");
    MSHookMessageEx(_ftt_class_SXMDMCAManager, @selector(dmca), (IMP)_patched_ftt_meth_$SXMDMCAManager$dmca, NULL);
}
