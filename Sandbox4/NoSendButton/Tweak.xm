#import <UIKit/UIKit.h>

%hook CKUIBehavior
- (bool)shouldNotShowSendButton {
    return 1;
}
%end

