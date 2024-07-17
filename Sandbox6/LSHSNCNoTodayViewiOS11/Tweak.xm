#import <UIKit/UIKit.h>

%hook SBMainDisplayPolicyAggregator
- (bool)_allowsCapabilityLockScreenTodayViewWithExplanation:(id*)arg1 {
    return 0;
}
%end

%hook SBMainDisplayPolicyAggregator
- (bool)_allowsCapabilityTodayViewWithExplanation:(id*)arg1 {
    return 0;
}
%end

%hook SBRootFolderView
- (unsigned long long)_minusPageCount {
    return 0;
}
%end

%hook SBHomeScreenTodayViewController
- (void)setHidden:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

