#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SBIconController$allowsUninstall(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconController = objc_getClass("SBIconController");
    MSHookMessageEx(_ftt_class_SBIconController, @selector(allowsUninstall), (IMP)_patched_ftt_meth_$SBIconController$allowsUninstall, NULL);
}
