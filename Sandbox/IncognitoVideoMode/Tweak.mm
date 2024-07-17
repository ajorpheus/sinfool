#import <UIKit/UIKit.h>

#include <substrate.h>

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
    // Top Bar BG Style
    return 2;
}

static long long _patched_ftt_meth_$CAMBottomBar$backgroundStyle(id self, SEL _cmd) {
    // Bottom Bar BG Style
    return 2;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Hide Elapsed Time
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Hide Still Capture During Video Button
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Hide Framerate Indicator
    return 1;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Stop Top Bar Rotation
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Flash Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show HDR Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Live Photo Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Timer Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Flip Button
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Image Well
    return 0;
}

static bool _patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$(id self, SEL _cmd, long long arg1, long long arg2) {
    // Show Filter Button
    return 0;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CUShutterButton = objc_getClass("CUShutterButton");
    MSHookMessageEx(_ftt_class_CUShutterButton, @selector(setMode:animated:), (IMP)_patched_ftt_meth_$CUShutterButton$setMode$animated$, (IMP *)_orig_ftt_meth_$CUShutterButton$setMode$animated$);
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(setSelectedMode:animated:), (IMP)_patched_ftt_meth_$CAMModeDial$setSelectedMode$animated$, (IMP *)_orig_ftt_meth_$CAMModeDial$setSelectedMode$animated$);
    Class _ftt_class_CAMTopBar = objc_getClass("CAMTopBar");
    MSHookMessageEx(_ftt_class_CAMTopBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMTopBar$backgroundStyle, NULL);
    Class _ftt_class_CAMBottomBar = objc_getClass("CAMBottomBar");
    MSHookMessageEx(_ftt_class_CAMBottomBar, @selector(backgroundStyle), (IMP)_patched_ftt_meth_$CAMBottomBar$backgroundStyle, NULL);
    Class _ftt_class_CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController");
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideElapsedTimeViewForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideElapsedTimeViewForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideStillDuringVideoButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideStillDuringVideoButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFramerateIndicatorForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFramerateIndicatorForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldRotateTopBarForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldRotateTopBarForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlashButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlashButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideHDRButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideHDRButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideIrisButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideIrisButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideTimerButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideTimerButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFlipButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFlipButtonForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideImageWellForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideImageWellForMode$device$, NULL);
    MSHookMessageEx(_ftt_class_CAMViewfinderViewController, @selector(_shouldHideFilterButtonForMode:device:), (IMP)_patched_ftt_meth_$CAMViewfinderViewController$_shouldHideFilterButtonForMode$device$, NULL);
}
