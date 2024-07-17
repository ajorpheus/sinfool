#import <UIKit/UIKit.h>

#include <substrate.h>

static int _patched_ftt_meth_$UIKBTree$visualStyle(id self, SEL _cmd) {
    return 5;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBTree = objc_getClass("UIKBTree");
    MSHookMessageEx(_ftt_class_UIKBTree, @selector(visualStyle), (IMP)_patched_ftt_meth_$UIKBTree$visualStyle, NULL);
}
