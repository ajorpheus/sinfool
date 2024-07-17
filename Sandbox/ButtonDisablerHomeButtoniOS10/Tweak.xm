#import <UIKit/UIKit.h>

%hook SBHomeHardwareButton
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

