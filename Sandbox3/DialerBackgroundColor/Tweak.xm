#import <UIKit/UIKit.h>

%hook PhoneRootView
- (void)setBackgroundColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:241/255.0 green:11/255.0 blue:145/255.0 alpha:255/255.0];
    %orig;
}
%end

