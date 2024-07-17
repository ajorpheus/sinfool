#import <UIKit/UIKit.h>

%hook SBTodayTableViewCell
- (void)setLabelText:(id)arg1 {
    // Set Custom Text...
    arg1 = @"Very cloudy today.  It's currently 98.6°; the high will be 420°.";
    %orig;
}
%end

