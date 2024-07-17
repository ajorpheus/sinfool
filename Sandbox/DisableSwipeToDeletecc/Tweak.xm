#import <UIKit/UIKit.h>

%hook UITableView
- (id)_indexPathForSwipeRowAtPoint:(CGPoint)arg1 {
    // Disables Swipe
    return NULL;
}
%end

