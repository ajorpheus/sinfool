#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration(id self, SEL _cmd) {
    // Always Reset Capture Configurations On Open
    return 1;
}

static id (*_orig_ftt_meth_$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$)(id, SEL, long long, long long, long long, long long, long long, long long, long long, long long, long long);
static id _patched_ftt_meth_$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$(id self, SEL _cmd, long long arg1, long long arg2, long long arg3, long long arg4, long long arg5, long long arg6, long long arg7, long long arg8, long long arg9) {
    // Photo Mode (Arg#8), Square Mode (Arg#9):	1:Mono, 2:Tonal, 3:Noir, 4:Fade, 5:Chrome, 6:Process, 7:Transfer, 8:Instant
    arg8 = 6;
    arg9 = 6;
    return _orig_ftt_meth_$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$(self, _cmd, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMUserPreferences = objc_getClass("CAMUserPreferences");
    MSHookMessageEx(_ftt_class_CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)_patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration, NULL);
    Class _ftt_class_CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration");
    MSHookMessageEx(_ftt_class_CAMCaptureConfiguration, @selector(initWithCaptureMode:captureDevice:flashMode:torchMode:HDRMode:irisMode:timerDuration:photoModeEffectFilterType:squareModeEffectFilterType:), (IMP)_patched_ftt_meth_$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$, (IMP *)_orig_ftt_meth_$CAMCaptureConfiguration$initWithCaptureMode$captureDevice$flashMode$torchMode$HDRMode$irisMode$timerDuration$photoModeEffectFilterType$squareModeEffectFilterType$);
}
