#import <UIKit/UIKit.h>

%hook VPAdBreak
- (BOOL)watched {
    return 1;
}
%end

%hook ABCVODVideoPlayerViewController
- (id)adCues {
    return NULL;
}
%end

%hook ServiceCallManager
- (BOOL)checkVersions {
    return 0;
}
%end

