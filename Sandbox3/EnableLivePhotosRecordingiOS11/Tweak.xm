#import <UIKit/UIKit.h>

%hook CAMCaptureCapabilities
- (bool)isBackIrisSupported {
    return 1;
}
%end

%hook CAMCaptureCapabilities
- (bool)isFrontIrisSupported {
    return 1;
}
%end

%hook AVCaptureDeviceFormat
- (bool)isIrisSupported {
    return 1;
}
%end

