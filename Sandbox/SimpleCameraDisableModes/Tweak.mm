#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isBackTimelapseSupported(id self, SEL _cmd) {
    // Timelapse #1
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isFrontTimelapseSupported(id self, SEL _cmd) {
    // Timelapse #2
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isBackSlomoSupported(id self, SEL _cmd) {
    // Slomo #1
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isFrontSlomoSupported(id self, SEL _cmd) {
    // Slomo #2
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isSquareModeSupported(id self, SEL _cmd) {
    // Square
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isBackPanoramaSupported(id self, SEL _cmd) {
    // Panorama #1
    return 0;
}

static bool _patched_ftt_meth_$CAMCaptureCapabilities$isFrontPanoramaSupported(id self, SEL _cmd) {
    // Panorama #2
    return 0;
}

static id _patched_ftt_meth_$CAMModeDial$initWithFrame$(id self, SEL _cmd, CGRect arg1) {
    // Remove Mode Text From Dial, "Photo" etc
    return NULL;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMCaptureCapabilities = objc_getClass("CAMCaptureCapabilities");
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isBackTimelapseSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isBackTimelapseSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isFrontTimelapseSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isFrontTimelapseSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isBackSlomoSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isBackSlomoSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isFrontSlomoSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isFrontSlomoSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isSquareModeSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isSquareModeSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isBackPanoramaSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isBackPanoramaSupported, NULL);
    MSHookMessageEx(_ftt_class_CAMCaptureCapabilities, @selector(isFrontPanoramaSupported), (IMP)_patched_ftt_meth_$CAMCaptureCapabilities$isFrontPanoramaSupported, NULL);
    Class _ftt_class_CAMModeDial = objc_getClass("CAMModeDial");
    MSHookMessageEx(_ftt_class_CAMModeDial, @selector(initWithFrame:), (IMP)_patched_ftt_meth_$CAMModeDial$initWithFrame$, NULL);
}
