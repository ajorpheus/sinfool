#import <UIKit/UIKit.h>

%hook BookmarksNavigationController
- (bool)allowsEditing {
    return 1;
}
%end

%hook BookmarksNavigationController
- (void)setAllowsEditing:(bool)arg1 {
    arg1 = 1;
    %orig;
}
%end

