#import <UIKit/UIKit.h>

%hook ServiceCallManager
- (BOOL)checkVersions {
    return 0;
}
%end

%hook VODPlayerViewController
- (id)adCues {
    return NULL;
}
%end

