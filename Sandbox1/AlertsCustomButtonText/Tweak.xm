#import <UIKit/UIKit.h>

%hook SBUserNotificationAlert
- (void)setDefaultButtonTitle:(id)arg1 {
    // Default Button Title
    arg1 = @"Okeydoke ";
    %orig;
}
%end

