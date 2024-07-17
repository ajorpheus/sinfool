#import <UIKit/UIKit.h>

%hook AVCaptureDeviceFormat
- (bool)isIrisSupported {
    return 1;
}
%end

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

%hook CAMUserPreferences
- (bool)isIrisCaptureEnabled {
    return 1;
}
%end

