#import <UIKit/UIKit.h>

%hook UIKeyboardLayoutStar
- (bool)keyHasAccentedVariants:(id)arg1 {
    return 0;
}
%end

