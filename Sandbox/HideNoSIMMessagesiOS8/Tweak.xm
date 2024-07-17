#import <UIKit/UIKit.h>

%hook SBSIMLockManager
- (bool)_shouldSuppressAlert {
    return 1;
}
%end

