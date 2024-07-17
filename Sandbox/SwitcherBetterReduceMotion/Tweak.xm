#import <UIKit/UIKit.h>

%hook SBReduceMotionDeckSwitcherViewController
- (bool)_shouldShowIconAndTitleInItemContainers {
    return 1;
}
%end

%hook SBReduceMotionDeckSwitcherViewController
- (id)_iconTitleContainerForDisplayItem:(id)arg1 {
    return NULL;
}
%end

%hook SBReduceMotionDeckSwitcherViewController
- (bool)_shouldUseDepth {
    return 1;
}
%end

