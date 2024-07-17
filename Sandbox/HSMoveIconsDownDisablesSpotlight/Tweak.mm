#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SBRootFolderView$setStatusBarHeight$)(id, SEL, double);
static void _patched_ftt_meth_$SBRootFolderView$setStatusBarHeight$(id self, SEL _cmd, double arg1) {
    // Set Top Distance...
    arg1 = 100;
    _orig_ftt_meth_$SBRootFolderView$setStatusBarHeight$(self, _cmd, arg1);
}

static unsigned long long _patched_ftt_meth_$SBRootFolderView$_minusPageCount(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$SBSearchScrollView$gestureRecognizerShouldBegin$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBRootFolderView = objc_getClass("SBRootFolderView");
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(setStatusBarHeight:), (IMP)_patched_ftt_meth_$SBRootFolderView$setStatusBarHeight$, (IMP *)_orig_ftt_meth_$SBRootFolderView$setStatusBarHeight$);
    MSHookMessageEx(_ftt_class_SBRootFolderView, @selector(_minusPageCount), (IMP)_patched_ftt_meth_$SBRootFolderView$_minusPageCount, NULL);
    Class _ftt_class_SBSearchScrollView = objc_getClass("SBSearchScrollView");
    MSHookMessageEx(_ftt_class_SBSearchScrollView, @selector(gestureRecognizerShouldBegin:), (IMP)_patched_ftt_meth_$SBSearchScrollView$gestureRecognizerShouldBegin$, NULL);
}
