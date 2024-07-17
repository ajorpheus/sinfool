#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UINavigationItem$_leftBarButtonItem(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UINavigationItem = objc_getClass("UINavigationItem");
    MSHookMessageEx(_ftt_class_UINavigationItem, @selector(_leftBarButtonItem), (IMP)_patched_ftt_meth_$UINavigationItem$_leftBarButtonItem, NULL);
}
