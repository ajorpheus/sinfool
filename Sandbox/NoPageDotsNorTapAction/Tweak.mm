#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$SBIconListPageControl$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // •
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconListPageControl = objc_getClass("SBIconListPageControl");
    MSHookMessageEx(_ftt_class_SBIconListPageControl, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$SBIconListPageControl$initWithFrame$, NULL);
}
