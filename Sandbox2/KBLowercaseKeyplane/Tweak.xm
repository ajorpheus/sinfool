#import <UIKit/UIKit.h>

%hook UIKBTree
- (bool)looksLikeShiftAlternate {
    return 1;
}
%end

