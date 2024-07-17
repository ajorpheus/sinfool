#import <UIKit/UIKit.h>

%hook SPTContextMenuView
- (double)defaultContentOffset {
    return 0;
}
%end

