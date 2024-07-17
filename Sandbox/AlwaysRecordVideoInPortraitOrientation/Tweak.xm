#import <UIKit/UIKit.h>

%hook CAMStartVideoRecordingCommand
- (long long)_videoOrientationForCaptureOrientation:(long long)arg1 {
    return 1;
}
%end

