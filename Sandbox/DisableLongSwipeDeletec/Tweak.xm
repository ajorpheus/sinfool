#import <UIKit/UIKit.h>

%hook SwipeActionPullView
- (bool)primaryActionIsDestructive {
    // •
    return 0;
}
%end

