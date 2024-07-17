#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$SXMUIManager$autoPlayOn(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SXMUIManager = objc_getClass("SXMUIManager");
    MSHookMessageEx(_ftt_class_SXMUIManager, @selector(autoPlayOn), (IMP)_patched_ftt_meth_$SXMUIManager$autoPlayOn, NULL);
}
