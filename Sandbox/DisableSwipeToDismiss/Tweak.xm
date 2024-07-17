#import <UIKit/UIKit.h>

%hook PUInteractiveSwipeDismissalController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

