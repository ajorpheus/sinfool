#import <UIKit/UIKit.h>

%hook PUAccessoryVisibilityInteractionController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

