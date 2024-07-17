#import <UIKit/UIKit.h>

#include <substrate.h>

static id _patched_ftt_meth_$CAMFocusIndicatorRectView$initWithSize$(id self, SEL _cmd, long long arg1) {
    // Focus Box
    return NULL;
}

static bool _patched_ftt_meth_$CAMPreviewViewController$_showExposureBiasSliderForPointView(id self, SEL _cmd) {
    // Bias Slider
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMFocusIndicatorRectView = objc_getClass("CAMFocusIndicatorRectView");
    MSHookMessageEx(_ftt_class_CAMFocusIndicatorRectView, @selector(initWithSize:), (IMP)_patched_ftt_meth_$CAMFocusIndicatorRectView$initWithSize$, NULL);
    Class _ftt_class_CAMPreviewViewController = objc_getClass("CAMPreviewViewController");
    MSHookMessageEx(_ftt_class_CAMPreviewViewController, @selector(_showExposureBiasSliderForPointView), (IMP)_patched_ftt_meth_$CAMPreviewViewController$_showExposureBiasSliderForPointView, NULL);
}
