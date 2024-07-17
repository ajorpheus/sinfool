#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$SPTContextMenuView$defaultContentOffset(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPTContextMenuView = objc_getClass("SPTContextMenuView");
    MSHookMessageEx(_ftt_class_SPTContextMenuView, @selector(defaultContentOffset), (IMP)_patched_ftt_meth_$SPTContextMenuView$defaultContentOffset, NULL);
}
