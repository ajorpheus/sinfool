#import <UIKit/UIKit.h>

%hook SBIconBadgeView
- (bool)displayingAccessory {
    return 0;
}
%end

