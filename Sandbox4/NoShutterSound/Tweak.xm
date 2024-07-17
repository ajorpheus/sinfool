#import <UIKit/UIKit.h>

%hook AVCapturePhotoSettings
- (void)setShutterSound:(unsigned int)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook AVCapturePhotoSettings
- (unsigned int)shutterSound {
    return 0;
}
%end

