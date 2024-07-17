#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$PHQuery$_includesTrashedObjects(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PHQuery = objc_getClass("PHQuery");
    MSHookMessageEx(_ftt_class_PHQuery, @selector(_includesTrashedObjects), (IMP)_patched_ftt_meth_$PHQuery$_includesTrashedObjects, NULL);
}
