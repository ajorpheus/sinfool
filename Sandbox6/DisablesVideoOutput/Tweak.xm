#import <UIKit/UIKit.h>

%hook AVCaptureVideoDataOutput
- (id)init {
    return NULL;
}
%end

