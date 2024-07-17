#import <UIKit/UIKit.h>

%hook CUCaptureController
- (bool)startCapturingBurstWithRequest:(id)arg1 error:(id*)arg2 {
    return 0;
}
%end

