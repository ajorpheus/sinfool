#import <UIKit/UIKit.h>

%hook SBFColorBoxes
- (float)contrast {
    return 0;
}
%end

