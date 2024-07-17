#import <UIKit/UIKit.h>

%hook UITableView
- (id)_indexPathForSwipeRowAtPoint:(CGPoint)arg1 {
    return NULL;
}
%end

