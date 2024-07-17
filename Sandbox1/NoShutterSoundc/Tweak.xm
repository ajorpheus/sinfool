#import <UIKit/UIKit.h>

%hook AVCaptureIrisStillImageSettings
- (unsigned long)shutterSound {
    return 0;
}
%end

