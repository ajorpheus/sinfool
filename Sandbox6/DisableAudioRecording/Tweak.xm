#import <UIKit/UIKit.h>

%hook CAMCaptureEngine
- (id)audioCaptureDevice {
    return NULL;
}
%end

