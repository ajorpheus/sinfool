#import <UIKit/UIKit.h>

%hook RCLockScreenViewController
- (id)init {
    // Lockscreen Waveform View
    return NULL;
}
%end

%hook _RCCaptureInputDeviceSession
- (bool)useStartSoundEffect {
    // Start Record Sound
    return 0;
}
%end

