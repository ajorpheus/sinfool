#import <UIKit/UIKit.h>

%hook UIAlertView
- (void)setCancelButtonIndex:(long long)arg1 {
    arg1 = 1;
    %orig;
}
%end

