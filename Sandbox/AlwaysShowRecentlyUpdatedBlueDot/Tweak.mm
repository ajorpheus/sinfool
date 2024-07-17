#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBLeafIcon$isRecentlyUpdated(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBLeafIcon = objc_getClass("SBLeafIcon");
    MSHookMessageEx(_ftt_class_SBLeafIcon, @selector(isRecentlyUpdated), (IMP)_patched_ftt_meth_$SBLeafIcon$isRecentlyUpdated, NULL);
}
