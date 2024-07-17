#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBIconController$shouldHighlightTouchedIconView$(id self, SEL _cmd, id arg1) {
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBIconController = objc_getClass("SBIconController");
    MSHookMessageEx(_ftt_class_SBIconController, @selector(shouldHighlightTouchedIconView:), (IMP)_patched_ftt_meth_$SBIconController$shouldHighlightTouchedIconView$, NULL);
}
