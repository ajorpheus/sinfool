#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$PUOneUpBarsController$shouldShowScrubber(id self, SEL _cmd) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_PUOneUpBarsController = objc_getClass("PUOneUpBarsController");
    MSHookMessageEx(_ftt_class_PUOneUpBarsController, @selector(shouldShowScrubber), (IMP)_patched_ftt_meth_$PUOneUpBarsController$shouldShowScrubber, NULL);
}
