#import <UIKit/UIKit.h>

%hook ASUpdatesViewController
- (bool)_isUpdateAllEnabled {
    return 0;
}
%end

