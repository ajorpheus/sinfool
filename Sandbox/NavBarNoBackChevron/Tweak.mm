#import <UIKit/UIKit.h>

#include <substrate.h>

static double _patched_ftt_meth_$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$(id self, SEL _cmd, id arg1) {
    return 0;
}

static bool _patched_ftt_meth_$UINavigationBar$_suppressBackIndicator(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class__UINavigationBarVisualStyle = objc_getClass("_UINavigationBarVisualStyle");
    MSHookMessageEx(_ftt_class__UINavigationBarVisualStyle, @selector(leftBackTitleMarginForCustomBackButtonBackground:), (IMP)_patched_ftt_meth_$_UINavigationBarVisualStyle$leftBackTitleMarginForCustomBackButtonBackground$, NULL);
    Class _ftt_class_UINavigationBar = objc_getClass("UINavigationBar");
    MSHookMessageEx(_ftt_class_UINavigationBar, @selector(_suppressBackIndicator), (IMP)_patched_ftt_meth_$UINavigationBar$_suppressBackIndicator, NULL);
}