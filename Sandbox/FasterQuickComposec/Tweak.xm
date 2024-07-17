#import <UIKit/UIKit.h>

%hook CKMessagesController
- (void)showNewMessageCompositionPanelWithRecipients:(id)arg1 composition:(id)arg2 animated:(bool)arg3 {
    arg3 = 0;
    %orig;
}
%end

