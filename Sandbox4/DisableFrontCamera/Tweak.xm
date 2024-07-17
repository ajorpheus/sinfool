#import <UIKit/UIKit.h>

%hook CAMCaptureCapabilities
- (bool)isFrontCameraSupported {
    return 0;
}
%end

