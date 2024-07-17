#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SwipeActionPullView$primaryActionIsDestructive(id self, SEL _cmd) {
    // •
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SwipeActionPullView = objc_getClass("SwipeActionPullView");
    MSHookMessageEx(_ftt_class_SwipeActionPullView, @selector(primaryActionIsDestructive), (IMP)_patched_ftt_meth_$SwipeActionPullView$primaryActionIsDestructive, NULL);
}
