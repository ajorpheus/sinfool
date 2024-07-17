#import <UIKit/UIKit.h>

%hook IGHScrollAYMFSectionController
- (long long)numberOfItems {
    return 0;
}
%end

%hook IGProfileAYMFSectionController
- (long long)numberOfItems {
    return 0;
}
%end

