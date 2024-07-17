#import <UIKit/UIKit.h>

%hook MPUNowPlayingTitlesView
- (void)setStyle:(long long)arg1 {
    arg1 = 0;
    %orig;
}
%end

