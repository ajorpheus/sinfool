#import <UIKit/UIKit.h>

#include <substrate.h>

static BOOL _patched_ftt_meth_$_UIAlertControllerView$shouldHaveBackdropView(id self, SEL _cmd) {
    // Backdrop
    return 0;
}

static id _patched_ftt_meth_$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Cancel Button
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIAlertControllerView = objc_getClass("_UIAlertControllerView");
    MSHookMessageEx(_ftt_class__UIAlertControllerView, @selector(shouldHaveBackdropView), (IMP)_patched_ftt_meth_$_UIAlertControllerView$shouldHaveBackdropView, NULL);
    Class _ftt_class__UIAlertControlleriOSActionSheetCancelBackgroundView = objc_getClass("_UIAlertControlleriOSActionSheetCancelBackgroundView");
    MSHookMessageEx(_ftt_class__UIAlertControlleriOSActionSheetCancelBackgroundView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$_UIAlertControlleriOSActionSheetCancelBackgroundView$initWithFrame$, NULL);
}
