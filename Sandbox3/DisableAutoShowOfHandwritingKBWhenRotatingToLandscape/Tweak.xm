#import <UIKit/UIKit.h>

%hook CKChatInputController
- (bool)presentsHandwritingOnRotation {
    return 0;
}
%end

