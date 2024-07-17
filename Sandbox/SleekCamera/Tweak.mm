#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration(id self, SEL _cmd) {
    // Always Reset Capture Configurations On Open
    return 1;
}

static long long _patched_ftt_meth_$CAMViewfinderViewController$_aspectRatioForMode$(id self, SEL _cmd, long long arg1) {
    // Camera Viewfinder Style/Top & Bottom Bar Size:  (Pass-Through:Auto, 0:Photo, 1:Video, 3:Square)
    return 1;
}

static long long _patched_ftt_meth_$CAMTopBar$backgroundStyle(id self, SEL _cmd) {
    // Top Bar Background Style [Video]:  (0:Tinted, 1:Transparent, 2:Black)
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Flash Button
    return 1;
}

static id _patched_ftt_meth_$CAMViewfinderViewController$_flashBadge(id self, SEL _cmd) {
    // Flash Badge
    return NULL;
}

static id _patched_ftt_meth_$CAMFlashButton$_warningIndicatorView(id self, SEL _cmd) {
    // Flash Warning Button
    return NULL;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // HDR Button
    return 1;
}

static id _patched_ftt_meth_$CAMViewfinderViewController$_HDRBadge(id self, SEL _cmd) {
    // HDR Badge
    return NULL;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Live Photo Button
    return 1;
}

static id _patched_ftt_meth_$CAMViewfinderViewController$_livePhotoBadge(id self, SEL _cmd) {
    // Live Photo Badge
    return NULL;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Timer Button
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Flip Button
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Elapsed Time
    return 1;
}

static id _patched_ftt_meth_$CAMFocusIndicatorRectView$initWithSize$(id self, SEL _cmd, long long arg1) {
    // Auto Focus Box
    return NULL;
}

static bool _patched_ftt_meth_$CAMPreviewViewController$_showExposureBiasSliderForPointView(id self, SEL _cmd) {
    // Bias Slider
    return 0;
}

static id _patched_ftt_meth_$CAMZoomSlider$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Zoom Slider
    return NULL;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Panorama Instructions
    return 1;
}

static long long _patched_ftt_meth_$CAMBottomBar$backgroundStyle(id self, SEL _cmd) {
    // Bottom Bar Background Style [Video]:  (0:Tinted, 1:Transparent, 2:Black)
    return 1;
}

static id _patched_ftt_meth_$CAMModeDial$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Dial Selector
    return NULL;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Image Well
    return 1;
}

static double _patched_ftt_meth_$CUShutterButton$_borderWidthForMode$(id self, SEL _cmd, long long arg1) {
    // Shutter Button Outside Ring:  (0:Transparent)
    return 0;
}

static id (*_orig_ftt_meth_$CUShutterButton$_colorForMode$)(id, SEL, long long);
static id _patched_ftt_meth_$CUShutterButton$_colorForMode$(id self, SEL _cmd, long long arg1) {
    // Shutter Button Inside Color/Style:  (-1:Transparent, 0:White, 1:Red)
    arg1 = -1;
    return _orig_ftt_meth_$CUShutterButton$_colorForMode$(self, _cmd, arg1);
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Filter Button
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Framerate Indicator
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMUserPreferences = objc_getClass("CAMUserPreferences");
    MSHookMessageEx(_ftt_class_CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)_patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration, NULL);
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_aspectRatioForMode:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_aspectRatioForMode$, NULL);
    Class _ftt_class_CAMTopBar = objc_getClass("CAMTopBar");
    MSHookMessageEx(_ftt_class_CAMTopBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMTopBar$backgroundStyle, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlashButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_flashBadge), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_flashBadge, NULL);
    Class _ftt_class_CAMFlashButton = objc_getClass("CAMFlashButton");
    MSHookMessageEx(_ftt_class_CAMFlashButton, @selector(_warningIndicatorView), (IMP)_patched_ftt_meth_$CAMFlashButton$_warningIndicatorView, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideHDRButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_HDRBadge), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_HDRBadge, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideIrisButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_livePhotoBadge), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_livePhotoBadge, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideTimerButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlipButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$, NULL);
    Class _ftt_class_CAMFocusIndicatorRectView = objc_getClass("CAMFocusIndicatorRectView");
    MSHookMessageEx(_ftt_class_CAMFocusIndicatorRectView, @selector(initWithSize:), (IMP)_patched_ftt_meth_$CAMFocusIndicatorRectView$initWithSize$, NULL);
    Class _ftt_class_CAMPreviewViewController = objc_getClass("CAMPreviewViewController");
    MSHookMessageEx(_ftt_class_CAMPreviewViewController, @selector(_showExposureBiasSliderForPointView), (IMP)_patched_ftt_meth_$CAMPreviewViewController$_showExposureBiasSliderForPointView, NULL);
    Class _ftt_class_CAMZoomSlider = objc_getClass("CAMZoomSlider");
    MSHookMessageEx(_ftt_class_CAMZoomSlider, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$CAMZoomSlider$initWithFrame$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHidePanoramaViewForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHidePanoramaViewForMode$device$, NULL);
    Class _ftt_class_CAMBottomBar = objc_getClass("CAMBottomBar");
    MSHookMessageEx(_ftt_class_CAMBottomBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMBottomBar$backgroundStyle, NULL);
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$CAMModeDial$initWithFrame$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideImageWellForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForMode$device$, NULL);
    Class _ftt_class_CUShutterButton = objc_getClass("CUShutterButton");
    MSHookMessageEx(_ftt_class_CUShutterButton, @selector(_borderWidthForMode:), (IMP)_patched_ftt_meth_$CUShutterButton$_borderWidthForMode$, NULL);
    MSHookMessageEx(_ftt_class_CUShutterButton, @selector(_colorForMode:), (IMP)_patched_ftt_meth_$CUShutterButton$_colorForMode$, (IMP *)_orig_ftt_meth_$CUShutterButton$_colorForMode$);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFilterButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$, NULL);
}
