#import <UIKit/UIKit.h>

%hook UISplitViewController
- (bool)_isMasterViewShown {
    return 1;
}
%end

