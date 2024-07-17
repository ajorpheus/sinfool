#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$WKContentView$webSelectionAssistant(id self, SEL _cmd) {
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WKContentView = objc_getClass("WKContentView");
    MSHookMessageEx(_ftt_class_WKContentView, @selector(webSelectionAssistant), (IMP)_patched_ftt_meth_$WKContentView$webSelectionAssistant, NULL);
}
