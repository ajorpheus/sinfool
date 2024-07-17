#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$TopViewVC$shouldOpenZeroSpeedViewController$(id self, SEL _cmd, id arg1) {
    // Disables Popup Descriptions (Optional):  (Yes=FALSE)
}

static id _patched_ftt_meth_$ExternalPoiController$init(id self, SEL _cmd) {
    return NULL;
}

static id _patched_ftt_meth_$UIWebView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_TopViewVC = objc_getClass("TopViewVC");
    MSHookMessageEx(_ftt_class_TopViewVC, @selector(shouldOpenZeroSpeedViewController:), (IMP)_patched_ftt_meth_$TopViewVC$shouldOpenZeroSpeedViewController$, NULL);
    Class _ftt_class_ExternalPoiController = objc_getClass("ExternalPoiController");
    MSHookMessageEx(_ftt_class_ExternalPoiController, @selector(init), (IMP)_patched_ftt_meth_$ExternalPoiController$init, NULL);
    Class _ftt_class_UIWebView = objc_getClass("UIWebView");
    MSHookMessageEx(_ftt_class_UIWebView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$UIWebView$initWithFrame$, NULL);
}
