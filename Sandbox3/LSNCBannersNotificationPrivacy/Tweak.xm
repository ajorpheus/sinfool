#import <UIKit/UIKit.h>

%hook NCNotificationShortLookView
- (void)setPrimarySubtitleText:(id)arg1 {
    // Primary Subtitle Text: (Default=No Text, Set Custom Text=Override Type:NSString or Stock Text=D)
}
%end

%hook NCNotificationShortLookView
- (void)setSecondaryText:(id)arg1 {
    // Secondary Text (Preview/Body/iMessage Text etc): (Default="New Notification" Text, Set Custom Text=Override Type:NSString or Stock Text=D)
    arg1 = @"New Notification ";
    %orig;
}
%end

%hook NCNotificationShortLookView
- (void)setHintText:(id)arg1 {
    // Hint Text: (Slide for more/Unlock for more etc): (Default=No Text, Set Custom Text=Override Type:NSString or Stock Text=D)
}
%end

