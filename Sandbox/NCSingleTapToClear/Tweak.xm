#import <UIKit/UIKit.h>

%hook NCNotificationListClearButton
- (long long)clearButtonState {
    return 1;
}
%end

%hook NCNotificationListClearButton
- (void)_layoutSubviewsForState:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

