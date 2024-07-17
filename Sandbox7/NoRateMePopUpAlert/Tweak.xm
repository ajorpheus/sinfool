#import <UIKit/UIKit.h>

%hook iRate
- (BOOL)ratedThisVersion {
    return 1;
}
%end

