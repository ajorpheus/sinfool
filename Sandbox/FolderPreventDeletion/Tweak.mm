#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBFolder$shouldRemoveWhenEmpty(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBFolder = objc_getClass("SBFolder");
    MSHookMessageEx(_ftt_class_SBFolder, @selector(shouldRemoveWhenEmpty), (IMP)_patched_ftt_meth_$SBFolder$shouldRemoveWhenEmpty, NULL);
}
