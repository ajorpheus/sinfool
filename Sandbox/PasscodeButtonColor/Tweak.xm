#import <UIKit/UIKit.h>

%hook TPPathView
- (void)setFillColor:(id)arg1 {
    // Passcode Button Color
    arg1 = [UIColor colorWithRed:255/255.0 green:127/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

