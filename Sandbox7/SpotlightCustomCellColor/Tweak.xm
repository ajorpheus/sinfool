#import <UIKit/UIKit.h>

%hook SearchUIRoundedView
- (void)setColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:28/255.0];
    %orig;
}
%end

