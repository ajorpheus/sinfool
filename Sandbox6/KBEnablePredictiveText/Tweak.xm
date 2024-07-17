#import <UIKit/UIKit.h>

%hook UIKeyboardPredictionView
- (bool)enabled {
    return 1;
}
%end

%hook UIKeyboardImpl
- (bool)showsCandidateBar {
    return 1;
}
%end

