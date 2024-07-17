#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$RHStatusBarView$setStatusMessage$ofType$)(id, SEL, id, int);
static void _patched_ftt_meth_$RHStatusBarView$setStatusMessage$ofType$(id self, SEL _cmd, id arg1, int arg2) {
    // Customize:  (Argument#1) Set Custom Text, pass-through=stock, (NULL)=none  (Argument#2)  0=No Orange Background Color, pass-through=stock
    arg1 = @"Flex 2";
    arg2 = 0;
    _orig_ftt_meth_$RHStatusBarView$setStatusMessage$ofType$(self, _cmd, arg1, arg2);
}

static id _patched_ftt_meth_$RHFullPlayerContainerViewController$statusBarView(id self, SEL _cmd) {
    // Full Player SB View:  (pass-through=show, (NULL)=hide)
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_RHStatusBarView = objc_getClass("RHStatusBarView");
    MSHookMessageEx(_ftt_class_RHStatusBarView, @selector(setStatusMessage:ofType:), (IMP)_patched_ftt_meth_$RHStatusBarView$setStatusMessage$ofType$, (IMP *)_orig_ftt_meth_$RHStatusBarView$setStatusMessage$ofType$);
    Class _ftt_class_RHFullPlayerContainerViewController = objc_getClass("RHFullPlayerContainerViewController");
    MSHookMessageEx(_ftt_class_RHFullPlayerContainerViewController, @selector(statusBarView), (IMP)_patched_ftt_meth_$RHFullPlayerContainerViewController$statusBarView, NULL);
}
