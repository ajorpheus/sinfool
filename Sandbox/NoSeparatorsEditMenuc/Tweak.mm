#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$UICalloutBarButton$setDividerOffset$)(id, SEL, double);
static void _patched_ftt_meth_$UICalloutBarButton$setDividerOffset$(id self, SEL _cmd, double arg1) {
    arg1 = 0;
    _orig_ftt_meth_$UICalloutBarButton$setDividerOffset$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UICalloutBarButton = objc_getClass("UICalloutBarButton");
    MSHookMessageEx(_ftt_class_UICalloutBarButton, @selector(setDividerOffset:), (IMP)_patched_ftt_meth_$UICalloutBarButton$setDividerOffset$, (IMP *)_orig_ftt_meth_$UICalloutBarButton$setDividerOffset$);
}
