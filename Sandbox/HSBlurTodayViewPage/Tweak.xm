#import <UIKit/UIKit.h>

%hook SBRootFolderView
- (bool)_searchableTodayViewModeWantsBlur {
    return 1;
}
%end

