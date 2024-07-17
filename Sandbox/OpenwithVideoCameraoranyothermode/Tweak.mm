#import <UIKit/UIKit.h>

#include <substrate.h>

static bool _patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration(id self, SEL _cmd) {
    // Always Reset Capture Configurations On Open
    return 1;
}

static long long _patched_ftt_meth_$CAMCaptureConfiguration$mode(id self, SEL _cmd) {
    // 0:Photo, 1:Video, 2:Slo-Mo, 3:Pano, 4:Square, 6:Time Lapse
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMUserPreferences = objc_getClass("CAMUserPreferences");
    MSHookMessageEx(_ftt_class_CAMUserPreferences, @selector(shouldResetCaptureConfiguration), (IMP)_patched_ftt_meth_$CAMUserPreferences$shouldResetCaptureConfiguration, NULL);
    Class _ftt_class_CAMCaptureConfiguration = objc_getClass("CAMCaptureConfiguration");
    MSHookMessageEx(_ftt_class_CAMCaptureConfiguration, @selector(mode), (IMP)_patched_ftt_meth_$CAMCaptureConfiguration$mode, NULL);
}
