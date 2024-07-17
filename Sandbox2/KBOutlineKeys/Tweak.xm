#import <UIKit/UIKit.h>

%hook UIKBTree
- (int)visualStyle {
    return 5;
}
%end

