#import <UIKit/UIKit.h>

%hook CCUIControlCenterViewController
- (long long)_currentOrientation {
    return 1;
}
%end

