#import <UIKit/UIKit.h>

%hook CAMCaptureEngine
- (id)audioCaptureDeviceInput {
    return NULL;
}
%end

