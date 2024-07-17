#import <UIKit/UIKit.h>

%hook NCNotificationShortLookViewController
- (bool)_shouldAddHintTextToLookView {
    return 0;
}
%end

%hook NCNotificationPriorityListViewController
- (bool)shouldAddHintTextForNotificationViewController:(id)arg1 {
    return 0;
}
%end

