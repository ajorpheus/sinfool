#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics(id self, SEL _cmd) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_SBSearchBackdropView = objc_getClass("SBSearchBackdropView");
    MSHookMessageEx(_ftt_class_SBSearchBackdropView, @selector(useHighQualityGraphics), (IMP)_patched_ftt_meth_$SBSearchBackdropView$useHighQualityGraphics, NULL);
}
