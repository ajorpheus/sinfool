#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(id self, SEL _cmd) {
    // Top Separator
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UIAlertControllerInterfaceActionGroupView = objc_getClass("_UIAlertControllerInterfaceActionGroupView");
    MSHookMessageEx(_ftt_class__UIAlertControllerInterfaceActionGroupView, @selector(_shouldShowSeparatorAboveActionsSequenceView), (IMP)_patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView, NULL);
}
