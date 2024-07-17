#import <UIKit/UIKit.h>

%hook MNGuidanceSignDistanceLabel
- (void)setTextColor:(id)arg1 {
    // Distance Text
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook MNGuidanceSignInstructionsLabel
- (void)setTextColor:(id)arg1 {
    // Instructions Text
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:255/255.0];
    %orig;
}
%end

%hook MainChromeViewItem
- (void)setBlurColor:(id)arg1 {
    // Bar Background
    arg1 = [UIColor colorWithRed:72/255.0 green:218/255.0 blue:218/255.0 alpha:255/255.0];
    %orig;
}
%end

