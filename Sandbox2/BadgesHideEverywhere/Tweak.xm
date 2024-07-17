#import <UIKit/UIKit.h>

%hook SBIconController
- (bool)iconViewDisplaysBadges:(id)arg1 {
    return 0;
}
%end

