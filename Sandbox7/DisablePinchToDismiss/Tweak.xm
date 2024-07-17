#import <UIKit/UIKit.h>

%hook PUInteractivePinchDismissalController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

