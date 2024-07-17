#import <UIKit/UIKit.h>

%hook SBSearchViewController
- (void)_setShowingKeyboard:(bool)arg1 {
    // •
    arg1 = 0;
    %orig;
}
%end

