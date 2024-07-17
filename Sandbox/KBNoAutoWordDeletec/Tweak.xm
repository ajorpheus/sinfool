#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (BOOL)usesAutoDeleteWord {
    return 0;
}
%end

