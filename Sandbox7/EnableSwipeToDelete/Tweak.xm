#import <UIKit/UIKit.h>

%hook UITableView
- (bool)_hasSwipeToDeleteRow {
    // •
    return 1;
}
%end

