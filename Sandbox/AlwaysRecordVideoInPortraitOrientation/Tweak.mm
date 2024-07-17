#import <UIKit/UIKit.h>

#include <substrate.h>

static long long _patched_ftt_meth_$CAMStartVideoRecordingCommand$_videoOrientationForCaptureOrientation$(id self, SEL _cmd, long long arg1) {
    return 1;
}

static __attribute__((constructor)) void _fttLocalInit() {
    Class _ftt_class_CAMStartVideoRecordingCommand = objc_getClass("CAMStartVideoRecordingCommand");
    MSHookMessageEx(_ftt_class_CAMStartVideoRecordingCommand, @selector(_videoOrientationForCaptureOrientation:), (IMP)_patched_ftt_meth_$CAMStartVideoRecordingCommand$_videoOrientationForCaptureOrientation$, NULL);
}
