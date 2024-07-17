#import <UIKit/UIKit.h>

%hook UIKeyboardPredictionCell
- (void)updateBackgroundWithRenderConfig:(id)arg1 {
    // •
    arg1 = NULL;
    %orig;
}
%end

