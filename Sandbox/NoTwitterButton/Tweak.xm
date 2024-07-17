#import <UIKit/UIKit.h>

%hook RHFullPlayerViewController_iphone
- (BOOL)showTwitterButton {
    return 0;
}
%end

