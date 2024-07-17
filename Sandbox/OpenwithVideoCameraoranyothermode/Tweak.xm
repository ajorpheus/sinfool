#import <UIKit/UIKit.h>

%hook CAMUserPreferences
- (bool)shouldResetCaptureConfiguration {
    // Always Reset Capture Configurations On Open
    return 1;
}
%end

%hook CAMCaptureConfiguration
- (long long)mode {
    // 0:Photo, 1:Video, 2:Slo-Mo, 3:Pano, 4:Square, 6:Time Lapse
    return 1;
}
%end

