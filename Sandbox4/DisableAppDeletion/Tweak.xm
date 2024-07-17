#import <UIKit/UIKit.h>

%hook SBIconController
- (BOOL)allowsUninstall {
    return 0;
}
%end

