#import <UIKit/UIKit.h>

%hook CKConversationList
- (bool)hasActiveConversations {
    return 0;
}
%end

