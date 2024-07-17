#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIKBTree$looksLikeShiftAlternate(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIKBTree = objc_getClass("UIKBTree");
    MSHookMessageEx(_ftt_class_UIKBTree, @selector(looksLikeShiftAlternate), (IMP)_patched_ftt_meth_$UIKBTree$looksLikeShiftAlternate, NULL);
}
