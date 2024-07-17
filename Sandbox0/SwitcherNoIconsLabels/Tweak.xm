#import <UIKit/UIKit.h>

%hook SBDeckSwitcherViewController
- (BOOL)shouldShowIconAndLabelOfContainer:(id)arg1 {
    return 0;
}
%end

