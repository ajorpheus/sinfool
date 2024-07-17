#import <UIKit/UIKit.h>

%hook NCNotificationShortLookView
- (void)setMessageNumberOfLines:(unsigned long long)arg1 {
    // Set # of Lines...
    arg1 = 20;
    %orig;
}
%end

