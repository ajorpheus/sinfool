#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)autocorrectionPreference {
    return 0;
}
%end

