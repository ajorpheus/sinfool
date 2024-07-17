#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CAMCaptureConfiguration$mode(id self, SEL _cmd) {
    // Camera Mode: (0=Photo, 1=Video/But Causes All Buttons To Overlap On The Left)
    return 0;
}

static bool _patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration(id self, SEL _cmd) {
    // Reset Capture Configuration (Disabled): Always Need To Swipe Over To Right To Open Video Mode=T
    return 1;
}

static void (*_orig_ftt_meth_$CUShutterButton$setMode$animated$)(id, SEL, long long, bool);
static void _patched_ftt_meth_$CUShutterButton$setMode$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    // Shutter Button Mode
    arg1 = 0;
    _orig_ftt_meth_$CUShutterButton$setMode$animated$(self, _cmd, arg1, arg2);
}

static void (*_orig_ftt_meth_$CAMModeDial$setSelectedMode$animated$)(id, SEL, long long, bool);
static void _patched_ftt_meth_$CAMModeDial$setSelectedMode$animated$(id self, SEL _cmd, long long arg1, bool arg2) {
    // Dial Selected Mode
    arg1 = 0;
    _orig_ftt_meth_$CAMModeDial$setSelectedMode$animated$(self, _cmd, arg1, arg2);
}

static long long _patched_ftt_meth_$CAMTopBar$backgroundStyle(id self, SEL _cmd) {
    // Top Bar BG Style: (Tranparent=1, Semi-Tranparent=0, Black=2)
    return 2;
}

static long long _patched_ftt_meth_$CAMBottomBar$backgroundStyle(id self, SEL _cmd) {
    // Bottom Bar BG Style: (Tranparent=1, Semi-Tranparent=0, Black=2)
    return 2;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Hide Elapsed Time
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Hide Still Capture During Video Button
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Hide Framerate Indicator
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Stop Top Bar Rotation
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Flash Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show HDR Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Live Photo Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Timer Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Flip Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Image Well
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$(id self, SEL _cmd, id arg1) {
    // Show Filter Button
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration");
    MSHookMessageEx(_ftt_class_CAMCaptureConfiguration, @selector(mode), (IMP)_patched_ftt_meth_$CAMCaptureConfiguration$mode, NULL);
    Class _ftt_class_CAMUserPreferences = objc_getClass("CAMUserPreferences");
    MSHookMessageEx(_ftt_class_CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)_patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration, NULL);
    Class _ftt_class_CUShutterButton = objc_getClass("CUShutterButton");
    MSHookMessageEx(_ftt_class_CUShutterButton, @selector(setMode:animated:), (IMP)_patched_ftt_meth_$CUShutterButton$setMode$animated$, (IMP *)_orig_ftt_meth_$CUShutterButton$setMode$animated$);
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(setSelectedMode:animated:), (IMP)_patched_ftt_meth_$CAMModeDial$setSelectedMode$animated$, (IMP *)_orig_ftt_meth_$CAMModeDial$setSelectedMode$animated$);
    Class _ftt_class_CAMTopBar = objc_getClass("CAMTopBar");
    MSHookMessageEx(_ftt_class_CAMTopBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMTopBar$backgroundStyle, NULL);
    Class _ftt_class_CAMBottomBar = objc_getClass("CAMBottomBar");
    MSHookMessageEx(_ftt_class_CAMBottomBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMBottomBar$backgroundStyle, NULL);
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideStillDuringVideoButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldRotateTopBarForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldRotateTopBarForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlashButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideHDRButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideIrisButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideTimerButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlipButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideImageWellForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForGraphConfiguration$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFilterButtonForGraphConfiguration:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForGraphConfiguration$, NULL);
}
