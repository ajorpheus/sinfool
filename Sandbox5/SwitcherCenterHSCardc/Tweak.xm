#import <UIKit/UIKit.h>

%hook SBDeckSwitcherViewController
- (unsigned long long)_indexForPresentationOrDismissalIsPresenting:(bool)arg1 {
    return 0;
}
%end

%hook SBReduceMotionDeckSwitcherViewController
- (unsigned long long)_indexForPresentationOrDismissalIsPresenting:(bool)arg1 {
    return 0;
}
%end

