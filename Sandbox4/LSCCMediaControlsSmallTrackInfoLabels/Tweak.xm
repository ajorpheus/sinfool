#import <UIKit/UIKit.h>

%hook MPUNowPlayingTitlesView
- (long long)style {
    return 0;
}
%end

