#import <UIKit/UIKit.h>

%hook UIWindow
- (bool)_disableAutomaticKeyboardUI {
    return 1;
}
%end

