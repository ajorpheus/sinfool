#import <UIKit/UIKit.h>

%hook UIViewAnimationState
- (BOOL)_allowsUserInteraction {
    return 1;
}
%end

