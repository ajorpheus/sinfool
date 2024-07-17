#import <UIKit/UIKit.h>

%hook UIKeyboardImpl
- (bool)autocapitalizationPreference {
    return 1;
}
%end

