#import <UIKit/UIKit.h>

%hook CKConversation
- (void)setLoadedMessageCount:(unsigned long long)arg1 {
    // Set # of Messages to Load
    arg1 = 1000;
    %orig;
}
%end

