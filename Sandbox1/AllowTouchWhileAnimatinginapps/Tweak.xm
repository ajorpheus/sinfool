#import <UIKit/UIKit.h>

%hook UIViewAnimationState
- (bool)_allowsUserInteraction {
    return 1;
}
%end

