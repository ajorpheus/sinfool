#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$)(id, SEL, bool, bool);
static void _patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$(id self, SEL _cmd, bool arg1, bool arg2) {
    // NC/Spotlight - Top Separator
    arg1 = 0;
    _orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$UITableView$setSeparatorStyle$)(id, SEL, long long);
static void _patched_ftt_meth_$UITableView$setSeparatorStyle$(id self, SEL _cmd, long long arg1) {
    // Apps - Table View Separators
    arg1 = 0;
    _orig_ftt_meth_$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(id self, SEL _cmd) {
    // Alerts - Top Separator
    return 0;
}

static void (*_orig_ftt_meth_$UICalloutBarButton$setDividerOffset$)(id, SEL, double);
static void _patched_ftt_meth_$UICalloutBarButton$setDividerOffset$(id self, SEL _cmd, double arg1) {
    // Action/Edit Menu - Button Separators
    arg1 = 0;
    _orig_ftt_meth_$UICalloutBarButton$setDividerOffset$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SPUINavigationBar = objc_getClass("SPUINavigationBar");
    MSHookMessageEx(_ftt_class_SPUINavigationBar, @selector(showSeparator:animated:), (IMP)_patched_ftt_meth_$SPUINavigationBar$showSeparator$animated$, (IMP *)_orig_ftt_meth_$SPUINavigationBar$showSeparator$animated$);
    Class _ftt_class_UITableView = objc_getClass("UITableView");
    MSHookMessageEx(_ftt_class_UITableView, @selector(setSeparatorStyle:), (IMP)_patched_ftt_meth_$UITableView$setSeparatorStyle$, (IMP *)_orig_ftt_meth_$UITableView$setSeparatorStyle$);
    Class _ftt_class__UIAlertControllerInterfaceActionGroupView = objc_getClass("_UIAlertControllerInterfaceActionGroupView");
    MSHookMessageEx(_ftt_class__UIAlertControllerInterfaceActionGroupView, @selector(_shouldShowSeparatorAboveActionsSequenceView), (IMP)_patched_ftt_meth_$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView, NULL);
    Class _ftt_class_UICalloutBarButton = objc_getClass("UICalloutBarButton");
    MSHookMessageEx(_ftt_class_UICalloutBarButton, @selector(setDividerOffset:), (IMP)_patched_ftt_meth_$UICalloutBarButton$setDividerOffset$, (IMP *)_orig_ftt_meth_$UICalloutBarButton$setDividerOffset$);
}
