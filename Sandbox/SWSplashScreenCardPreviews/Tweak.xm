#import <UIKit/UIKit.h>

%hook SBAppSwitcherSnapshotView
- (bool)shouldTransitionToDefaultPng {
    // •
    return 1;
}
%end

