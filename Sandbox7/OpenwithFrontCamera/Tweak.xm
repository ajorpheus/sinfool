#import <UIKit/UIKit.h>

%hook CAMUserPreferences
- (bool)shouldResetCaptureConfiguration {
    // Always Reset Capture Configurations On Open
    return 1;
}
%end

%hook CAMCaptureConfiguration
- (long long)device {
    return 1;
}
%end

