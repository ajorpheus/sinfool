#import <UIKit/UIKit.h>

%hook RCLockScreenViewController
- (id)init {
    // LS Waveform
    return NULL;
}
%end

%hook _RCCaptureInputDeviceSession
- (BOOL)useStartSoundEffect {
    // Start Recording Sound
    return 0;
}
%end

