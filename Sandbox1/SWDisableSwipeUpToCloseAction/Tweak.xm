#import <UIKit/UIKit.h>

%hook SBAppSwitcherController
- (bool)switcherScroller:(id)arg1 isDisplayItemRemovable:(id)arg2 {
    // •
    return 0;
}
%end

