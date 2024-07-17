#import <UIKit/UIKit.h>

%hook CAMUserPreferences
- (bool)shouldResetCaptureConfiguration {
    // Always Reset Capture Configurations On Open
    return 1;
}
%end

%hook CAMCaptureConfiguration
- (id)initWithCaptureMode:(long long)arg1 captureDevice:(long long)arg2 flashMode:(long long)arg3 torchMode:(long long)arg4 HDRMode:(long long)arg5 irisMode:(long long)arg6 timerDuration:(long long)arg7 photoModeEffectFilterType:(long long)arg8 squareModeEffectFilterType:(long long)arg9 {
    // Photo Mode (Arg#8), Square Mode (Arg#9):	1:Mono, 2:Tonal, 3:Noir, 4:Fade, 5:Chrome, 6:Process, 7:Transfer, 8:Instant
    arg8 = 6;
    arg9 = 6;
    return %orig;
}
%end

