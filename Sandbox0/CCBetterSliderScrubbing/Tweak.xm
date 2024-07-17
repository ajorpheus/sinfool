#import <UIKit/UIKit.h>

%hook CCUIControlCenterSlider
- (bool)ccuiSupportsDelayedTouchesByContainingScrollViewForGesture:(id)arg1 {
    return 0;
}
%end

