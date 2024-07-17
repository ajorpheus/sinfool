#import <UIKit/UIKit.h>

%hook SBControlCenterController
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

