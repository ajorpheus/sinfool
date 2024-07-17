#import <UIKit/UIKit.h>

%hook AVCaptureStillImageOutput
- (unsigned long)shutterSound {
    return 0;
}
%end

