#import <UIKit/UIKit.h>

#include <substrate.h>

static void (*_orig_ftt_meth_$WGWidgetShortLookView$setShowingMoreContent$)(id, SEL, bool);
static void _patched_ftt_meth_$WGWidgetShortLookView$setShowingMoreContent$(id self, SEL _cmd, bool arg1) {
    // Always Show More Content: (Yes=T, No=F)
    arg1 = 1;
    _orig_ftt_meth_$WGWidgetShortLookView$setShowingMoreContent$(self, _cmd, arg1);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_WGWidgetShortLookView = objc_getClass("WGWidgetShortLookView");
    MSHookMessageEx(_ftt_class_WGWidgetShortLookView, @selector(setShowingMoreContent:), (IMP)_patched_ftt_meth_$WGWidgetShortLookView$setShowingMoreContent$, (IMP *)_orig_ftt_meth_$WGWidgetShortLookView$setShowingMoreContent$);
}
