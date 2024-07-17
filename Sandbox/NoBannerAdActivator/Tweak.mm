#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$UIWebView$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_UIWebView = objc_getClass("UIWebView");
    MSHookMessageEx(_ftt_class_UIWebView, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$UIWebView$initWithFrame$, NULL);
}
