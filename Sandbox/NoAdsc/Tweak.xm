#import <UIKit/UIKit.h>

%hook MYWAppDelegate
- (BOOL)isFreeAppUpgraded {
    return 1;
}
%end

