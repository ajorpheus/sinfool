#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)usesAutoDeleteWord {
    return 0;
}
%end

