#import <UIKit/UIKit.h>

%hook SBReduceMotionDeckSwitcherViewController
- (bool)_shouldUseDepth {
    return 1;
}
%end

%hook SBReduceMotionDeckSwitcherViewController
- (bool)_shouldShowIconAndTitleInItemContainers {
    return 1;
}
%end

%hook SBReduceMotionDeckSwitcherViewController
- (double)_opacityForIconTitleViewAtIndex:(unsigned long long)arg1 {
    return 0;
}
%end

%hook SBAppSwitcherScrollView
- (void)setPagingEnabled:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

