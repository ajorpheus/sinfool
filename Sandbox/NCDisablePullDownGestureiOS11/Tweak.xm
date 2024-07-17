#import <UIKit/UIKit.h>

%hook SBCoverSheetSystemGesturesDelegate
- (bool)gestureRecognizerShouldBegin:(id)arg1 {
    return 0;
}
%end

