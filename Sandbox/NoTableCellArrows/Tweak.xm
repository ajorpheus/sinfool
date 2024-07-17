#import <UIKit/UIKit.h>

%hook CKConversationListCellLayout
- (void)setShouldShowChevron:(bool)arg1 {
    arg1 = 0;
    %orig;
}
%end

%hook CKConversationListCellLayout
- (bool)shouldShowChevron {
    return 0;
}
%end

