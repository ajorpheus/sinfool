#import <UIKit/UIKit.h>

%hook NCNotificationListSectionHeaderView
- (void)setTitle:(id)arg1 forSectionIdentifier:(id)arg2 {
    arg1 = @" ";
    %orig;
}
%end

