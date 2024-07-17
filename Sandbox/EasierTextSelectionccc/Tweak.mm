#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$WKContentView$useSelectionAssistantWithMode$)(id, SEL, int);
static void _patched_ftt_meth_$WKContentView$useSelectionAssistantWithMode$(id self, SEL _cmd, int arg1) {
    arg1 = 1;
    _orig_ftt_meth_$WKContentView$useSelectionAssistantWithMode$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WKContentView = objc_getClass("WKContentView");
    MSHookMessageEx(_ftt_class_WKContentView, @selector(useSelectionAssistantWithMode:), (IMP)_patched_ftt_meth_$WKContentView$useSelectionAssistantWithMode$, (IMP *)_orig_ftt_meth_$WKContentView$useSelectionAssistantWithMode$);
}
