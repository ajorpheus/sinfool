#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$iVersion$shouldCheckForNewVersion(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_iVersion = objc_getClass("iVersion");
    MSHookMessageEx(_ftt_class_iVersion, @selector(shouldCheckForNewVersion), (IMP)_patched_ftt_meth_$iVersion$shouldCheckForNewVersion, NULL);
}
