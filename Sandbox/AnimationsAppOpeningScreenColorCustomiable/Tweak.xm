#import <UIKit/UIKit.h>

%hook SBAppViewBackgroundView
- (void)setBackgroundColor:(id)arg1 {
    // Set Color...
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook SBAppViewBackgroundView
- (bool)_isTranslucent {
    return 0;
}
%end

