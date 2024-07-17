#import <UIKit/UIKit.h>

%hook UIKBScreenTraits
- (bool)isKeyboardMinorEdgeWidth {
    return 1;
}
%end

