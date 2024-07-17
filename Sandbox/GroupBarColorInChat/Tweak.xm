#import <UIKit/UIKit.h>

%hook MFComposeRecipientTextView
- (void)setBackgroundColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:35/255.0 green:35/255.0 blue:35/255.0 alpha:255/255.0];
    %orig;
}
%end

