#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (BOOL)shouldShowDictationKey {
    return 0;
}
%end

