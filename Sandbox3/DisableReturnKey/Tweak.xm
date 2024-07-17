#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)returnKeyEnabled {
    return 0;
}
%end

