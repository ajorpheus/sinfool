#import <UIKit/UIKit.h>

%hook SBGrabberTongue
- (bool)_requiresTongueOutsideGrabberFreeRegion {
    return 0;
}
%end

