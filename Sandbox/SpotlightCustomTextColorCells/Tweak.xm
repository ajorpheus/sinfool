#import <UIKit/UIKit.h>

%hook SearchUIVibrantLabel
- (void)setTextColor:(id)arg1 {
    // Set Text Color...
    arg1 = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:255/255.0];
    %orig;
}
%end

