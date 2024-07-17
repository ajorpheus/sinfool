#line 1 "Tweak.xm"
#import <UIKit/UIKit.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

asm(".linker_option \"-framework\", \"CydiaSubstrate\"");

@class UITableView; @class UICalloutBarButton; @class SPUINavigationBar; @class _UIAlertControllerInterfaceActionGroupView; 
static void (*_logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$)(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, bool, bool); static void _logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST, SEL, bool, bool); static void (*_logos_orig$_ungrouped$UITableView$setSeparatorStyle$)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL, long long); static bool (*_logos_orig$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView)(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST, SEL); static bool _logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$UICalloutBarButton$setDividerOffset$)(_LOGOS_SELF_TYPE_NORMAL UICalloutBarButton* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$UICalloutBarButton$setDividerOffset$(_LOGOS_SELF_TYPE_NORMAL UICalloutBarButton* _LOGOS_SELF_CONST, SEL, double); 

#line 3 "Tweak.xm"

static void _logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$(_LOGOS_SELF_TYPE_NORMAL SPUINavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, bool arg1, bool arg2) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$(self, _cmd, arg1, arg2);
}



static void _logos_method$_ungrouped$UITableView$setSeparatorStyle$(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UITableView$setSeparatorStyle$(self, _cmd, arg1);
}



static bool _logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView(_LOGOS_SELF_TYPE_NORMAL _UIAlertControllerInterfaceActionGroupView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
    return 0;
}



static void _logos_method$_ungrouped$UICalloutBarButton$setDividerOffset$(_LOGOS_SELF_TYPE_NORMAL UICalloutBarButton* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    arg1 = 0;
    _logos_orig$_ungrouped$UICalloutBarButton$setDividerOffset$(self, _cmd, arg1);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SPUINavigationBar = objc_getClass("SPUINavigationBar"); { MSHookMessageEx(_logos_class$_ungrouped$SPUINavigationBar, @selector(showSeparator:animated:), (IMP)&_logos_method$_ungrouped$SPUINavigationBar$showSeparator$animated$, (IMP*)&_logos_orig$_ungrouped$SPUINavigationBar$showSeparator$animated$);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); { MSHookMessageEx(_logos_class$_ungrouped$UITableView, @selector(setSeparatorStyle:), (IMP)&_logos_method$_ungrouped$UITableView$setSeparatorStyle$, (IMP*)&_logos_orig$_ungrouped$UITableView$setSeparatorStyle$);}Class _logos_class$_ungrouped$_UIAlertControllerInterfaceActionGroupView = objc_getClass("_UIAlertControllerInterfaceActionGroupView"); { MSHookMessageEx(_logos_class$_ungrouped$_UIAlertControllerInterfaceActionGroupView, @selector(_shouldShowSeparatorAboveActionsSequenceView), (IMP)&_logos_method$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView, (IMP*)&_logos_orig$_ungrouped$_UIAlertControllerInterfaceActionGroupView$_shouldShowSeparatorAboveActionsSequenceView);}Class _logos_class$_ungrouped$UICalloutBarButton = objc_getClass("UICalloutBarButton"); { MSHookMessageEx(_logos_class$_ungrouped$UICalloutBarButton, @selector(setDividerOffset:), (IMP)&_logos_method$_ungrouped$UICalloutBarButton$setDividerOffset$, (IMP*)&_logos_orig$_ungrouped$UICalloutBarButton$setDividerOffset$);}} }
#line 34 "Tweak.xm"
