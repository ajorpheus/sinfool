#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBWidgetController$isWidgetExtensionVisible$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBWidgetController = objc_getClass("SBWidgetController");
    MSHookMessageEx(_ftt_class_SBWidgetController, @selector(isWidgetExtensionVisible:), (IMP)_patched_ftt_meth_$SBWidgetController$isWidgetExtensionVisible$, NULL);
}
