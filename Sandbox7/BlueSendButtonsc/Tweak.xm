#import <UIKit/UIKit.h>

%hook CKConversation
- (BOOL)sendButtonColor {
    // Send Button
    return 1;
}
%end

