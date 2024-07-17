#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer(id self, SEL _cmd) {
    return 1;
}

static bool _patched_ftt_meth_$_UIAlertControllerView$showsCancelAction(id self, SEL _cmd) {
    return 0;
}

static bool _patched_ftt_meth_$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView(id self, SEL _cmd) {
    return 0;
}

static void (*_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$)(id, SEL, bool);
static void _patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(id self, SEL _cmd, bool arg1) {
    arg1 = 0;
    _orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIAlertController = objc_getClass("UIAlertController");
    MSHookMessageEx(_ftt_class_UIAlertController, @selector(_canDismissWithGestureRecognizer), (IMP)_patched_ftt_meth_$UIAlertController$_canDismissWithGestureRecognizer, NULL);
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(showsCancelAction), (IMP)_patched_ftt_meth_$_UIAlertControllerView$showsCancelAction, NULL);
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(_shouldHaveCancelActionInCollectionView), (IMP)_patched_ftt_meth_$_UIAlertControllerView$_shouldHaveCancelActionInCollectionView, NULL);
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(setCancelActionIsDiscrete:), (IMP)_patched_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$, (IMP *)_orig_ftt_meth_$_UIAlertControllerView$setCancelActionIsDiscrete$);
}
