#import <UIKit/UIKit.h>

%hook MPUEmptyNowPlayingView
- (void)setBackgroundColor:(id)arg1 {
    arg1 = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0/255.0];
    %orig;
}
%end

