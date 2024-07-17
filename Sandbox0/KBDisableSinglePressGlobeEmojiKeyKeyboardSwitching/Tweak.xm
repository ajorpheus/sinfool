#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (bool)isLongPressedKey:(id)arg1 {
    return 1;
}
%end

