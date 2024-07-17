#import <UIKit/UIKit.h>

%hook SBLeafIcon
- (bool)isRecentlyUpdated {
    return 1;
}
%end

