#import <UIKit/UIKit.h>

%hook SPUISearchViewController
- (bool)_showKeyboardOnPresentation {
    return 1;
}
%end

