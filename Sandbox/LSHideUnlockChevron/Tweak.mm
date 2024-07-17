#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$_UIGlintyStringView$chevron(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIGlintyStringView = objc_getClass("_UIGlintyStringView");
    MSHookMessageEx(_ftt_class__UIGlintyStringView, @selector(chevron), (IMP)_patched_ftt_meth_$_UIGlintyStringView$chevron, NULL);
}
