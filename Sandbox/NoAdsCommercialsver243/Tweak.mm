#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$CAAdManager$prerollEnabled(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAAdManager = objc_getClass("CAAdManager");
    MSHookMessageEx(_ftt_class_CAAdManager, @selector(prerollEnabled), (IMP)_patched_ftt_meth_$CAAdManager$prerollEnabled, NULL);
}
