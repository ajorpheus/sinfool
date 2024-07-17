#import <UIKit/UIKit.h>

%hook SBHorizontalScrollFailureRecognizer
- (bool)_isLocationOutOfBounds:(CGPoint)arg1 {
    return 1;
}
%end

%hook SBPolicyAggregator
- (bool)_allowsCapabilityLockScreenTodayViewWithExplanation:(id*)arg1 {
    return 0;
}
%end

%hook SBPolicyAggregator
- (bool)_allowsCapabilityLockScreenCameraSupportedWithExplanation:(id*)arg1 {
    return 0;
}
%end

