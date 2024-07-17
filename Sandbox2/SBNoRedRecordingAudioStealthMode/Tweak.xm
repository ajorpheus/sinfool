#import <UIKit/UIKit.h>

%hook RCLockScreenViewController
- (id)init {
    // Removes Lockscreen Waveform View
    return NULL;
}
%end

%hook _RCCaptureInputDeviceSession
- (bool)useStartSoundEffect {
    // Removes Start Record Sound
    return 0;
}
%end

