#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (bool)shouldShowDictationKey {
    return 0;
}
%end

